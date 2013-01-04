function [output] = quantisation(input, resolution)
% QUANTISATION Lowers the resolution of an image, 
% input is the input image and the number
% of different levels in the output image.
%
% Sources:
% - http://stackoverflow.com/questions/9463445/quantize-a-grayscale-image-in-matlab

resolution = resolution - 1;

output = double(input) / 255;
output = uint8(output * resolution);
output = double(output) / resolution;

%output = output;

end

