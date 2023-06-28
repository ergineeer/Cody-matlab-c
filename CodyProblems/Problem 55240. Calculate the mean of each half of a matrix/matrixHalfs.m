% % % % % % % % % % % % % % % % % % % % %
%          - Cody Study -
%        28/06/2023 - Wednesday
%           Ergin Sezgin
% Problem 55240. Calculate the mean of each half of a matrix
% % % % % % % % % % % % % % % % % % % % %

cd(fileparts(matlab.desktop.editor.getActiveFilename))
clear
clc

sampleMatrix = round(10*rand(10,12));
[~, sizeComp_2] = size(sampleMatrix);

matrixHalf_1 = sampleMatrix(:,1:sizeComp_2/2);
matrixHalf_2 = sampleMatrix(:,1+sizeComp_2/2:sizeComp_2);

meanHalf_1 = mean(matrixHalf_1(:));
meanHalf_2 = mean(matrixHalf_2(:));
