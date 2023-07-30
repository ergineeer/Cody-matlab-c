% % % % % % % % % % % % % % % % % % % % %
%          - Cody Study -
%        30/07/2023 - Sunday
%           Ergin Sezgin
% Problem 88. It dseon't mettar waht oedrr the lrettes in a wrod are.
% % % % % % % % % % % % % % % % % % % % %

cd(fileparts(matlab.desktop.editor.getActiveFilename))
clear
clc

inputText = input("Enter your text: ", 's');

if isempty(inputText)
    sentence = '';
else
    elements = split(inputText," ");
    for i=1:height(elements)
        currentWord = char(elements(i,1));
        currentWordIntact = currentWord;
        alphabeticlals = isstrprop(currentWord, "alphanum");
        currentWord = currentWord(alphabeticlals);
        currentWordMidpart = currentWord(1,2:numel(currentWord)-1);
        if numel(currentWord) > 3
            currentWordMidpart = currentWordMidpart(1,numel(currentWordMidpart):-1:1);
            currentWord(1,2:numel(currentWord)-1) = currentWordMidpart;
            if ~all(alphabeticlals)
                currentWord(1, ~alphabeticlals) = currentWordIntact(1,~alphabeticlals);
            end
        end
        elementsReordered{i,1} = currentWord;
    end
    elementsReordered = transpose(elementsReordered);
    sentence = strjoin(elementsReordered, " ")
end
