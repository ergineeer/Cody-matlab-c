/* 
          - Cody Study -
        27/07/2023 - Thursday
           Ergin Sezgin
 Problem 18. Bullseye Matrix
*/

#include <iostream>
#include <vector>
using namespace std;

vector<vector<int>> padArray(vector<vector<int>>& mat, int padVal) {
    int size = mat.size() + 2;
    vector<vector<int>> newMat(size, vector<int>(size, padVal));

    for (int i = 1; i < size - 1; i++)
        for (int j = 1; j < size - 1; j++)
            newMat[i][j] = mat[i - 1][j - 1];
    return newMat;
}

void printMat(const vector<vector<int>>& mat) {
    for (auto& row : mat) {
        for (auto& val : row) cout << val << ' ';
        cout << '\n';
    }
}

int main(void) {
    int n;
    cout << "Enter matrix size: ";
    cin >> n;
  
    vector<vector<int>> bullseye = {{1}};
    for (int i = 2; i <= n; i++)
        bullseye = padArray(bullseye, i);

    printMat(bullseye);

    system("pause");
    return 0;
}
