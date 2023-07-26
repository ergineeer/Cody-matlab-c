% % % % % % % % % % % % % % % % % % % % %
%          - Cody Study -
%        26/07/2023 - Wednesday
%           Ergin Sezgin
% Problem Problem 18. Bullseye Matrix
% This implementation works but not accepted by CODY, 
% probably due to "padarray" function.
% % % % % % % % % % % % % % % % % % % % %

cd(fileparts(matlab.desktop.editor.getActiveFilename))
clear
clc

inputValue = input("Matrix size: ");
bullseyeMatrix = 1;
for i=2:inputValue
    bullseyeMatrix = padarray(bullseyeMatrix, [1,1], i, "both");
end
disp(bullseyeMatrix)
