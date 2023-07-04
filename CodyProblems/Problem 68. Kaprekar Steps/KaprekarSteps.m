% % % % % % % % % % % % % % % % % % % % %
%          - Cody Study -
%        07/04/2023 - Tuesday
%           Ergin Sezgin
% Problem 68. Kaprekar Steps
% % % % % % % % % % % % % % % % % % % % %

cd(fileparts(matlab.desktop.editor.getActiveFilename))
clear
clc

inputValue = input("Initial value: ");
inputValueIntact = inputValue;

stepCounter = 0;

while inputValue ~= 6174

    charArray = sprintf('%04d', inputValue)';
    seperatedDigits = str2double(num2cell(charArray));

    if ~all(seperatedDigits == seperatedDigits(1))
        descendingValue = sortrows(seperatedDigits,"descend")';
        descendingValue = num2str(descendingValue);
        descendingValue = erase(descendingValue," ");
        descendingValue = str2double(descendingValue);

        ascendingValue = sortrows(seperatedDigits,"ascend")';
        ascendingValue = num2str(ascendingValue);
        ascendingValue = erase(ascendingValue," ");
        ascendingValue = str2double(ascendingValue);

        inputValue = descendingValue - ascendingValue;
        stepCounter = stepCounter + 1;
    else
        stepCounter = Inf;
        break
    end

end
fprintf("For initial value of %d, Kaprekar Steps is %d.\n", inputValueIntact, stepCounter)
