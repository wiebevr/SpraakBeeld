function [ output ] = crop_image( input, at_x, at_y, size_x, size_y )
% CROP_IMAGE Crops an image using the imcrop function.
% at is position of the upper left pixel and size
% is the width and height of the cropped image.

output = imcrop(input, [at_x at_y size_x size_y]);

end

