function [ output ] = gray_level_slicing_bg( input, from, to, inside_value )
%GRAY_LEVEL_SLICING_BGK Differentiate a certain range of values in an
%image, do not change the outside value.
    output = input;
    output (input > from & input < to) = inside_value;

end