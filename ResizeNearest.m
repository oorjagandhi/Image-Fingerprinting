function resizedImage = ResizeBox(image, targetSize)
    [m, n, p] = size(image); % Get dimensions of the input image
    i_target = targetSize(1); % Desired height of the resized image
    j_target = targetSize(2); % Desired width of the resized image
    
    % Calculate step sizes for dividing the image
    i_step = m / i_target;
    j_step = n / j_target;
    
    resizedImage = zeros(i_target, j_target, p, 'uint8'); % Initialize the resized image
    
    for i = 1:i_target
        for j = 1:j_target
            % Calculate bounding box indices
            i_start = floor((i - 1) * i_step) + 1;
            i_end = floor(i * i_step);
            j_start = floor((j - 1) * j_step) + 1;
            j_end = floor(j * j_step);
            
            % Calculate average pixel values
            box_pixels = image(i_start:i_end, j_start:j_end, :);
            avg_pixel = round(mean(box_pixels, [1, 2]));
            
            % Update the resized image
            resizedImage(i, j, :) = avg_pixel;
        end
    end
    
    % Convert to uint8
    resizedImage = uint8(resizedImage);
end
