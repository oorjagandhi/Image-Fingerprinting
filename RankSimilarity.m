function [] = RankSimilarity(fingerprint, filenames, fpCollection, n)
% RankSimilarity.m is a function that displays n image files ranked by
% descending similarity
%
% Inputs:
%   fingerprint: A 1-by-64 logical row vector representing the image
%   fingerprint to search.
%   filenames: An m-by-1 string array representing a list of image file
%   names.
%   fpCollection: An m-by-1 cell array containing a collection of image
%   fingerprints.
%   n: An integer denoting how many image fingerprint matches to display.
% Outputs:
%   None.
%
% Author: Oorja Gandhi


% Initialising an array to store Hamming distances and filenames.
similarity = zeros(length(fpCollection), 2);


% Calculating Hamming distances using the HammingDistance function.
for i = 1:length(fpCollection)
    ham = HammingDistance(fingerprint, fpCollection{i});
    similarity(i, :) = [ham, i];
end


% Sorting the similarity array by Hamming distance in ascending order.
sortedInfo = sortrows(similarity);


% Iterating through each rank to display the top n similar images.
for r = 1:n
    ham = sortedInfo(r, 1);
    imageIndex = sortedInfo(r, 2);
    % Adjusting the spacing for double digits.
    if r < 10
        fprintf('%d. %2d - %s\n', r, ham, filenames{imageIndex});
    else
        fprintf('%2d. %2d - %s\n', r, ham, filenames{imageIndex});
    end
end

end
