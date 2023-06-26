/* 
          - Cody Study -
        26/06/2023 - Monday
           Ergin Sezgin
 Problem 55230. Find Closest Constant
*/

#include <iostream>
#include <cmath>
#include <vector>
#include <string>
#include <limits>
using namespace std;

int main() {
    vector<string> constantsLabel = {"0", "1", "sqrt(2)", "e", "pi", "2pi"};
    vector<double> constantsArray = {0, 1, sqrt(2), exp(1), M_PI, 2*M_PI};

    double enteredValue;
    cout << "Enter a number: ";
    cin >> enteredValue;

    double minDiff = numeric_limits<double>::max();
    size_t minIndex = 0;

    for (size_t i = 0; i < constantsArray.size(); ++i) {
        double diff = abs(enteredValue - constantsArray[i]);
        if (diff < minDiff) {
            minDiff = diff;
            minIndex = i;
        }
    }

    cout << "Closest Constant: " << constantsLabel[minIndex] << endl;

    system("pause");
    return 0;
}
