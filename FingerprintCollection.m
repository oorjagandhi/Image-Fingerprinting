function [fingerprintCollection] = FingerprintCollection(filenames, hashType, resizeType)
% FingerprintCollection.m is a function that stores all of the image
% fingerprints from a list of image filenames so they can be quickly looked
% up for comparison.
%
% Inputs:
%   filenames: An m-by-1 string array representing a list of image file
%   names.
%   hashType: A character vector containing either 'AvgHash' or 'DiffHash'.
%   resizeType: A character vector containing either 'Nearest' or 'Box'.
%
% Outputs:
%   fingerprint: A m-by-1 cell array containing the fingerprint from each
%   image file.
%
% Author: Oorja Gandhi


% Find the number of files
numImages = size(filenames, 1);


% Initialize the cell array to store fingerprints
fingerprintCollection = cell(numImages, 1);


% Loop through each filename and calculate its fingerprint
for i = 1:numImages
    % Get the current filename
    filename = filenames(i, :);

    % Read the image from the file
    image = imread(filename);

    % Calculate the fingerprint using the ImageFingerprint function
    fingerprint = ImageFingerprint(image, hashType, resizeType);

    % Store the calculated fingerprint in the collection
    fingerprintCollection{i} = fingerprint;
end

end