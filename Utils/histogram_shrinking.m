function [ output ] = histogram_shrinking( input, min_target, max_target )
%HISTOGRAM_SHRINKING Compreses the image histogram between min and max.

input = double(input);

min_value = min(min(input));
max_value = max(max(input));

shrink_factor = (max_target - min_target) / (max_value - min_value);

output = input .* shrink_factor;

output = output + min_target;
end

