% % % % % % % % % % % % % % % % % % % % %
%          - Cody Study -
%        03/07/2023 - Monday
%           Ergin Sezgin
% Problem 23. Finding Perfect Squares
% % % % % % % % % % % % % % % % % % % % %

cd(fileparts(matlab.desktop.editor.getActiveFilename))
clear
clc

valuesArray = input("Values: ")
valuesArraySquare = valuesArray.^2;

idx = false(1,size(valuesArray,2));
for i=1:numel(valuesArray)
    idx(1,i) = ismember(valuesArraySquare(1,i), valuesArray);
end

result = 0;
if nnz(idx) ~= 0
    result = 1;    
end
