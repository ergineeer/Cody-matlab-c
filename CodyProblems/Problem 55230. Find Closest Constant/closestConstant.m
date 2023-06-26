% % % % % % % % % % % % % % % % % % % % %
%          - Cody Study -
%        26/06/2023 - Monday
%           Ergin Sezgin
% Problem 55230. Find Closest Constant
% % % % % % % % % % % % % % % % % % % % %

cd(fileparts(matlab.desktop.editor.getActiveFilename))
clear
clc

constantsLabel = ["0", "1", "sqrt(2)", "e", "pi", "2pi"]
constantsArray = [0 1 sqrt(2) exp(1) pi 2*pi];

prompt = "Enter a number: ";
enteredValue = input(prompt)
diffArray = enteredValue - constantsArray;
[val, idx] = min(abs(diffArray))
fprintf("Closest Constant: %s", constantsLabel(1,idx))
