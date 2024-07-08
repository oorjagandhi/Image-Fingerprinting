function [] = DispFP(fingerprint)
% DispFP.m is a function that will displays the image fingerprint in a
% more readable format on one line.
%
% Inputs:
%   fingerprint: A 1-by-n logical row vector representing an image
%   fingerprint.
%
% Outputs:
%   None.
%
% Author: Oorja Gandhi


% Calculate the total number of bits in the fingerprint
bits = length(fingerprint);


% Iterating through each value and printing it
for i = 1:bits
    fprintf('%d', fingerprint(i));

    % Adding a space after 8 bits and removing the last space if present
    if mod(i, 8) == 0 && i ~= bits
        fprintf(' ');
    end
end


% New line at the end
fprintf('\n'); 

end