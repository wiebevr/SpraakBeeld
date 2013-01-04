function [ output ] = image_subtraction( input_a, input_b, offset)
%IMAGE_SUBTRACTION Subtract input_b from input_b, histogram stretching is
%applied on the result.

output = double(input_a) - double(input_b);

output = output + offset;
output = histogram_stretching(output);

end

