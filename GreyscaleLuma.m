function [greyscaleImage] = GreyscaleLuma(rgbImage)
% GreyscaleLuma.m is a function that will convert the supplied RGB colour
% image to a greyscale version by calculating a weighted sum for each
% pixel.
%
% Inputs:
%   rgbImage:  An m-by-n-by-3 uint8 array representing an RGB colour image.
%
% Outputs:
%   greyscaleImage: An m-by-n-by-1 uint8 array representing a greyscale
%   image.
%
% Author: Oorja Gandhi


% Get the dimensions of the input image
[rows, cols, ~] = size(rgbImage);

% Initialize the greyscale image
greyscaleImage = zeros(rows, cols, 'uint8');

% Iterate through each pixel and find greyscale using the weighted sum
% formula
for i = 1:rows
    for j = 1:cols
        greyscaleImage(i,j) = (0.2126*double(rgbImage(i,j,1)) + 0.7152*double(rgbImage(i,j,2)) + 0.0722*double(rgbImage(i,j,3)));
    end
end

% Convert the final image to uint8
greyscaleImage = uint8(greyscaleImage);
