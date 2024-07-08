function [fingerprint] = AvgHash(image)
% AvgHash.m is a function that uses the Average Hashing algorithm to
% convert an m-by-n greyscale image into a hash containing 𝑚𝑛 bits.
%
% Inputs:
%   image: An m-by-n uint8 array representing a greyscale image. 
% 
% Outputs: 
%   averageHash: A 1-by-mn logical row vector representing the average
%   hash of the greyscale image.
% 
% Author: Oorja Gandhi


% Calculating the average pixel value and rounding it
averageValue = round(mean(image(:)));


% Finding the rows and columns of the input image array
[imageRows, imageCols] = size(image);


% Initalising the array
fingerprint = false(1, imageRows*imageCols);

% Initialising the counter
counter = 1;

% Iterating through each pixel of the image
for rows = 1:imageRows
    for cols = 1:imageCols
        % Compare pixel value to average and set logical in array
        if image(rows, cols) >= averageValue
            fingerprint(counter) = true;
        else
            fingerprint(counter) = false;
        end
        counter = counter + 1;
    end
end
