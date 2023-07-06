% % % % % % % % % % % % % % % % % % % % %
%          - Cody Study -
%        06/07/2023 - Thursday
%           Ergin Sezgin
% Problem 60. The Goldbach Conjecture
% % % % % % % % % % % % % % % % % % % % %

cd(fileparts(matlab.desktop.editor.getActiveFilename))
clear
clc

inputValue = input("Input value: ");

primeVals = primes(inputValue);
[rows, cols] = find((primeVals + primeVals') == inputValue);
resultPairs = [primeVals(rows);primeVals(cols)]';
disp(resultPairs)
