function [ output ] = histogram_stretching( input )
%HISTOGRAM_STRETCHING Modifies the histogram of the image (and thus the
%image) to use the entire spectrum.

input = double(input);

min_value = min(min(input))
max_value = max(max(input))

shrink_factor = 255 / (max_value - min_value);

output = (input - min_value) .* shrink_factor;

end

