/* 
          - Cody Study -
        03/07/2023 - Monday
           Ergin Sezgin
 Problem 23. Finding Perfect Squares
*/

#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;

int main(void) {
    cout << "Values: ";
    vector<int> valuesArray;
    int value;
    while (cin >> value){              // A non-integer is required to terminate loop.
        valuesArray.push_back(value);
    }

    vector<int> valuesArraySquare;
    for (const auto& val : valuesArray) {
        valuesArraySquare.push_back(val * val);
    }

    vector<bool> idx(valuesArray.size(), false);
    for (int i = 0; i < valuesArray.size(); ++i){
        idx[i] = find(valuesArray.begin(), valuesArray.end(), valuesArraySquare[i]) != valuesArray.end();
    }
  
    int result;
    if (count(idx.begin(), idx.end(), true) != 0) {
        result = 1;
    } else {
        result = 0;
    }

    cout << "Result: " << result << endl;

    system("pause");
    return 0;
}
