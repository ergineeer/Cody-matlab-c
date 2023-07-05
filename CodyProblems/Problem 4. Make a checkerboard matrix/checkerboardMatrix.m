% % % % % % % % % % % % % % % % % % % % %
%          - Cody Study -
%        05/07/2023 - Wednesday
%           Ergin Sezgin
% Problem 4. Make a checkerboard matrix
% % % % % % % % % % % % % % % % % % % % %

cd(fileparts(matlab.desktop.editor.getActiveFilename))
clear
clc

inputValue = input("Matrix size: ");

zerosTemplate = zeros(inputValue, inputValue);
for i= -inputValue+1 : 2 : inputValue-1
    zerosTemplate = zerosTemplate + diag(ones(1,inputValue-1*abs(i)),i);
end

if mod(inputValue,2) == 0
    zerosTemplate = [zerosTemplate(:,end), zerosTemplate(:,1:end-1)];
end

checkboardMatrix = zerosTemplate;
disp(checkboardMatrix)
