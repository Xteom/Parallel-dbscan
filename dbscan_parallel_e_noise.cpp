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
void noise_detection(float** points, float epsilon, int min_samples, long long int size, int num_threads) {
    
    long long int i;
    int vecinos = 0;

    omp_set_num_threads(num_threads);

    #pragma omp parallel shared(points, epsilon, min_samples, size) private(i)
    {
        #pragma omp for reduction(+:vecinos)
        for (i=0; i < size; i++) 
        { 
            //medimos la distancia de cada punto con todos los demas
            for (long long int j=0; j < size; j++) {
                if(j==i) continue;
                if (distance(points[i][0], points[i][1], points[j][0], points[j][1]) < epsilon) {
                    vecinos++;
                }
                //si ya encontramos el minimo de vecinos, paramos    
                if (vecinos >= min_samples) {
                    points[i][2] = 1;
                    break;
                }
            
            }

            // if(vecinos < min_samples) {
            //     points[i][2] = 0;
            // }

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
    int num_threads = atoi(argv[2]);

    const string input_file_name = to_string(size)+"_data.csv";
    const string output_file_name = to_string(size)+"p_" + to_string(num_threads) + "n_results_e.csv";    
    float** points = new float*[size];
    double start = 0;
    double end = 0;

    //exe puntos hilos
    // puntos 20000, 40000, 80000, 120000, 140000, 160000, 180000, 200000
    // hilos 1, tot/2, tot, 2tot

    omp_set_num_threads(num_threads);

    for(long long int i = 0; i < size; i++) {
        points[i] = new float[3]{0.0, 0.0, 0.0}; 
        // index 0: position x
        // index 1: position y 
        // index 2: 0 for noise point, 1 for core point
    }

    load_CSV(input_file_name, points, size);
        
    start = omp_get_wtime();
    noise_detection(points, epsilon, min_samples, size, num_threads);
    end = omp_get_wtime();

    save_to_CSV(output_file_name, points, size);

    //datos, modo, hilos, tiempo
    cout << size << ",_puntos," << num_threads << "," << end - start << "\n";

    #pragma omp barrier
    
    for(long long int i = 0; i < size; i++) {
        delete[] points[i];
    }
    delete[] points;
    return 0;
}