function resizedImage = ResizeBox(image, dimesnsions)
% ResizeBox.m is a function that will use the Box Sampling algorithm to
% resize an image to the specified dimensions
%
% Inputs:
%   image: An m-by-n-by-p uint8 array representing a greyscale or a RGB
%   colour image.
%   dimensions: A 1-by-2 double array containing two values (i, j)
%   representing the desired height 𝑖 and width j to resize the image to.
%
% Outputs:
%   resizedImage: An i-by-j-by-p uint8 array representing the resized
%   greyscale or RGB colour image
%
% Author: Oorja Gandhi


% Get dimensions of the input image
[m, n, p] = size(image);


% Desired height and width of the resized image
i = dimesnsions(1);
j = dimesnsions(2);


% Calculate step sizes for dividing the image
boxWidth = m / i;
boxHeight = n / j;


% Initialize the resized image with the uint8 datatype
resizedImage = zeros(i, j, p, 'uint8');


% Loop through the rows of the resized image
for rows = 1:i
    % Loop through the columns of the resized image
    for cols = 1:j
        % Calculating the ranges of the new pixel in terms of the original image
        rows_start = round((rows - 1) * boxWidth - 0.00001) + 1; % Offset to prevent rounding up for start
        rows_end = round(rows * boxWidth);
        cols_start = round((cols - 1) * boxHeight - 0.00001) + 1; % Offset to prevent rounding up for start
        cols_end = round(cols * boxHeight);

        % Calculating the average pixel value per colour
        for colour = 1:p
            boxPixels = image(rows_start:rows_end, cols_start:cols_end, colour);
            averagePixelValue = uint8(round(mean(boxPixels(:))));
            resizedImage(rows, cols, colour) = averagePixelValue;
        end
    end
end

% Convert to uint8
resizedImage = uint8(resizedImage);
end
