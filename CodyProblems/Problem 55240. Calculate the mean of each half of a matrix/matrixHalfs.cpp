/* 
          - Cody Study -
        28/06/2023 - Wednesday
           Ergin Sezgin
 Problem 55240. Calculate the mean of each half of a matrix
*/

#include <iostream>
#include <vector>
#include <ctime>
#include <cmath>
#include <cstdlib>
using namespace std;

int main() {
    srand(time(nullptr)); // Null
    vector<vector<int>> sampleMatrix(10, vector<int>(12));
    for (size_t i = 0; i < sampleMatrix.size(); ++i) {
        for (size_t j = 0; j < sampleMatrix[i].size(); ++j) {
            sampleMatrix[i][j] = round(10 * static_cast<double>(rand()) / RAND_MAX);
        }
    }

    size_t sizeComp_2 = sampleMatrix[0].size();

    vector<vector<int>> matrixHalf_1(sampleMatrix.begin(), sampleMatrix.begin() + sizeComp_2 / 2);
    vector<vector<int>> matrixHalf_2(sampleMatrix.begin() + sizeComp_2 / 2, sampleMatrix.end());

    double sumHalf_1 = 0;
    for (const auto& row : matrixHalf_1) {
        for (const auto& element : row) {
            sumHalf_1 += element;
        }
    }
    double meanHalf_1 = sumHalf_1 / (matrixHalf_1.size() * matrixHalf_1[0].size());

    double sumHalf_2 = 0;
    for (const auto& row : matrixHalf_2) {
        for (const auto& element : row) {
            sumHalf_2 += element;
        }
    }
    double meanHalf_2 = sumHalf_2 / (matrixHalf_2.size() * matrixHalf_2[0].size());

    cout << "sampleMatrix:" << endl;
    for (const auto& row : sampleMatrix) {
        for (const auto& element : row) {
            cout << element << " ";
        }
        cout << endl;
    }

    cout << "meanHalf_1: " << meanHalf_1 << endl;
    cout << "meanHalf_2: " << meanHalf_2 << endl;

    system("pause");
    return 0;
}
