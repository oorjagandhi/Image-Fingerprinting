function differingBits = HammingDistance(f1, f2)
% HammingDistance.m is a function that will compare two image fingerprints,
% and determine the number of positions at which the corresponding values
% differ
%
% Inputs:
%   f1: A 1-by-n logical row vector for fingerprint f1.
%   f2: A 1-by-n logical row vector for fingerprint f2.
%
% Output:
%   difference: A integer representing the number of differing bits between
%   fingerprints f1 and f2.
%
% Author: Oorja Gandhi


% Initialising the amount of differing bits to be 0
differingBits = 0;


% Iterate through each bit position in the fingerprints
for i = 1:length(f1)
    % Compare the bits at the current position
    if f1(i) ~= f2(i)
        % If the bits differ, increment the amount of differingBits
        differingBits = differingBits + 1;
    end
end

end