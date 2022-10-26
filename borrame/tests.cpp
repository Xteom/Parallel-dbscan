#include <omp.h>
#include <iostream>
#include <string>
#include <fstream>
#include <cmath>
using namespace std;
#include <vector>


float distance(float x1, float y1, float x2, float y2)
{
    return sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2));
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

int main(int argc, char** argv) {
    const float epsilon = 0.03;
    const int min_samples = 10;
    const long long int size = 4000;
    const string input_file_name = to_string(size)+"_data.csv";
    const string output_file_name = to_string(size)+"_results.csv";    
    float** points = new float*[size];

    for (long long int i = 0; i < size; i++) {
        points[i] = new float[3]{0.0, 0.0, 0.0};
    }
    load_CSV(input_file_name, points, size);
    
    cout << "Start" << "\n";
    //vector
    //vector<float> vecinos_i;
    //array of pointers
    // float** vecinos_i = new float*[size];
    // vector of float pointers
    vector<float*> vecinos_i;

    for (int i = 0; i < 1; i++){
        for (long long int j = 0; j < 10; j++) {
            	cout << distance(points[i][0], points[i][1], points[j][0], points[j][1]) << "\n";
                if (distance(points[i][0], points[i][1], points[j][0], points[j][1]) < 0.2) {
                    //add to vecinos_i pointer to point[j][1]
                    vecinos_i.push_back(points[j][2]);
                    //add to array of pointers
                    // vecinos_i[0] = &points[j][1];
                }
        }
    }
    
    // *vecinos_i[0] = 69;

    int n = 5;
    int* pointer  = &n;
    *pointer = 10; // n = 10
    cout << "Complete" << "\n";

     //print points
    for (long long int i = 0; i < 10; i++) {
        cout << points[i][0] << " - " << points[i][1] << "\n";
    }
    cout << "______________" << "\n";
    cout << distance(0.366, 0.506, 0.411, 0.45);
    cout << distance(1, 2, 3, 4);
}