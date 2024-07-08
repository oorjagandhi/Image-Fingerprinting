function [fingerprint] = ImageFingerprint(image, hashType, resizeType)
% ImageFingerprint.m is a function that will call most of the previous
% functions to create a fingerprint.
%
% Inputs:
%   image: An m-by-n-by-3 uint8 array representing a colour image.
%   hashType: A character vector containing either 'AvgHash' or 'DiffHash'.
%   resizeType: A character vector containing either 'Nearest' or 'Box'.
%
% Outputs:
%   fingerprint: A 1-by-64 logical row vector representing the image
%   fingerprint.
%
% Author: Oorja Gandhi

% Convert the image to greyscale using GreyscaleLuma.m
greyImage = GreyscaleLuma(image);

% Resize the image depending on what hashing type is used
if strcmp(hashType, "AvgHash")
    newSize = [8 8];
elseif strcmp(hashType, "DiffHash")
    newSize = [8 9];
end

% Resize the image using the input resizing function
if strcmp(resizeType, 'Nearest')
    resizedImage = ResizeNearest(greyImage, newSize);
elseif strcmp(resizeType, 'Box')
    resizedImage = ResizeBox(greyImage, newSize);
end

% Hash the image using the input hashing function
if strcmp(hashType, 'AvgHash')
    fingerprint = AvgHash(resizedImage);
elseif strcmp(hashType, 'DiffHash')
    fingerprint = DiffHash(resizedImage);
end

end