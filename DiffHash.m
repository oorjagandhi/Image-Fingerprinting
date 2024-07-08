function [hash] = DiffHash(image)
% DiffHash.m is a function that will converts an m-by-(n + 1) greyscale
% image into a hash containing 𝑚𝑛 bits using the Differential Hashing
% algorithm.
%
% Inputs:
%   greyscaleImage: m-by-(n + 1) uint8 array representing a greyscale
%   image.
%
% Outputs:
%   A 1-by-mn logical row vector representing the differential hash of the
%   greyscale image.
%
% Author: Oorja Gandhi


% Get the dimensions of the input image
[m, n] = size(image);


% Initialize the row vector representing the differential hash with zeros
% and subtracting one to get the true size of the hash vector.
hash = false(1, m * (n-1));


% Initialize the index for the hash vector
index = 1;


% Looping through each row of the image
for row = 1:m
    % Loop through each column of the image (except the last column)
    for col = 1:n-1
        % If pixel value is greater than or equal to the pixel value to the
        % right, represent it as logical true.
        if image(row, col) >= image(row, col + 1)
            hash(index) = true;
            % If pixel value is less than the pixel value to the right,
            % represent it as logical false.
        elseif image(row, col) < image(row, col + 1)
            hash(index) = false;
        end
        % Increment the index for the hash vector
        index = index + 1;
    end
end

end