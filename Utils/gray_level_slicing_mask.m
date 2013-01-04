function [ output ] = gray_level_slicing_mask( input, from, to, outside_value, inside_value )
%GRAY_LEVEL_SLICING_MASK Differentiate a certain range of values in an
%image.
    output = input;
    output (input > from & input < to) = inside_value;
    output (input <= from | input >= to) = outside_value;

end

