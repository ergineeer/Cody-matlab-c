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

p = primes(inputValue);
[rows, cols] = find((p + p') == inputValue);
resultPairs = [p(rows);p(cols)]';
disp(resultPairs)
