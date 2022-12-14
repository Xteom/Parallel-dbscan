#include <omp.h>
#include <iostream>
#include <string>
#include <fstream>
#include <cmath>

using namespace std;


float distance(float x1, float y1, float x2, float y2)
{   
    return sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2));
}

//points matriz de puntos de entrada
//epsilon radio de busqueda, umbral de densidad
//min_samples numero minimo de puntos para formar un cluster
//size numero de puntos
void noise_detection(float** points, float epsilon, int min_samples, long long int size) {
    
    //array of pointers
    float** vecinos_i = new float*[size]{0};
    
    //recorremos todos los puntos
    for (long long int i=0; i < size; i++) {
        int vecinos = 0;

        //medimos la distancia de cada punto con todos los demas
        for (long long int j=0; j < size; j++) {
            if(j==i) continue;
            if (distance(points[i][0], points[i][1], points[j][0], points[j][1]) < epsilon) {
                vecinos_i[vecinos] = &points[j][2];
                vecinos++;
            }
        }
        
        //si cuenta como core hacemos a todos sus vecinos core de segundo grado
        if(vecinos >= min_samples){
            //lo hacemos core
            points[i][2] = 1;
            for (long long int k=0; k < vecinos; k++){
                //solo lo hacemos si no es core
                if(*vecinos_i[k] == 0){
                    *vecinos_i[k] = 2;
                }
            }
            
        }
    }

    //borramos el array de vecinos
    delete[] vecinos_i;

    //hacemos todos los core de segundo grado de primer grado para graficarlos
    for (long long int i=0; i < size; i++) {
        if(points[i][2] == 2){
            points[i][2] = 1;
        }
    }

}

void load_CSV(string file_name, float** points, long long int size) {
    ifstream in("data/"+file_name);
    if (!in) {
        cerr << "Couldn't read file: " << file_name << "\n";
    }
    long long int point_number = 0; 
    while (!in.eof() && (point_number < size)) {
        char* line = new char[12];
        streamsize row_size = 12;
        in.read(line, row_size);
        string row = line;
        //cout << stof(row.substr(0, 5)) << " - " << stof(row.substr(6, 5)) << "\n";
        points[point_number][0] = stof(row.substr(0, 5));
        points[point_number][1] = stof(row.substr(6, 5));
        point_number++;
    }
}

//convierte la matriz de points en un archivo csv
void save_to_CSV(string file_name, float** points, long long int size) {
    fstream fout;
    fout.open("dump/"+file_name, ios::out);
    for (long long int i = 0; i < size; i++) {
        fout << points[i][0] << ","
             << points[i][1] << ","
             << points[i][2] << "\n";
    }
}

int main(int argc, char** argv) {

    const float epsilon = 0.03;
    const int min_samples = 10;

    const long long int size = atoi(argv[1]);

    const string input_file_name = to_string(size)+"_data.csv";
    const string output_file_name = to_string(size)+"_serial_results.csv";    
    float** points = new float*[size];
    double start = 0;
    double end = 0;


    for(long long int i = 0; i < size; i++) {
        points[i] = new float[3]{0.0, 0.0, 0.0}; 
        // index 0: position x
        // index 1: position y 
        // index 2: 0 for noise point, 1 for core point
    }

    load_CSV(input_file_name, points, size);
        
    start = omp_get_wtime();
    noise_detection(points, epsilon, min_samples, size); 
    end = omp_get_wtime();
    
    //datos, modo, hilos, tiempo
    cout << size << ",serial,1," << end - start << "\n";

    save_to_CSV(output_file_name, points, size);


    for(long long int i = 0; i < size; i++) {
        delete[] points[i];
    }
    delete[] points;
    return 0;
}