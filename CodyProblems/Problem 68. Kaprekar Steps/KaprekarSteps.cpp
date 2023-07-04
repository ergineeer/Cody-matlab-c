/* 
          - Cody Study -
        07/04/2023 - Tuesday
           Ergin Sezgin
 Problem 68. Kaprekar Steps
*/

#include <iostream>
#include <string>
#include <algorithm>
#include <limits>
using namespace std;

int main(void) {
    int inputValue;
    cout << "Initial value: ";
    cin >> inputValue;
    int inputValueIntact = inputValue;

    int stepCounter = 0;
    while (inputValue != 6174) {
        string charArray = to_string(inputValue);
        while (charArray.length() < 4) {
            charArray = '0' + charArray;
        }

        int separatedDigits[4];
        for (int i = 0; i < 4; ++i) {
            separatedDigits[i] = charArray[i] - '0';
        }
      
        bool allDigitsSame = all_of(separatedDigits, separatedDigits + 4, [&](int d) { return d == separatedDigits[0]; });
      
        if (!allDigitsSame) {

            sort(separatedDigits, separatedDigits + 4, greater<int>());
            int descendingValue = 0;
            for (int i = 0; i < 4; ++i) {
                descendingValue = descendingValue * 10 + separatedDigits[i];
            }

            sort(separatedDigits, separatedDigits + 4);
            int ascendingValue = 0;
            for (int i = 0; i < 4; ++i) {
                ascendingValue = ascendingValue * 10 + separatedDigits[i];
            }

            inputValue = descendingValue - ascendingValue;
            stepCounter++;
        } else {
            stepCounter = numeric_limits<int>::max();
            break;
        }
    }

    cout << "For initial value of " << inputValueIntact << ", Kaprekar Steps is " << stepCounter << "." << endl;
  
    system("pause");
    return 0;
}
