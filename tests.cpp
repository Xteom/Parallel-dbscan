#include <omp.h>
#include <iostream>
#include <string>
#include <fstream>
#include <cmath>
using namespace std;

int distance(int x1, int y1, int x2, int y2)
{
    return sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2));
}

int main(int argc, char** argv) {
    cout << distance(1, 2, 3, 4);
}