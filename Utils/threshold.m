function [ output ] = threshold( input, at, below_value, above_value )
%THRESHOLD Summary of this function goes here
%   Detailed explanation goes here
output = input;

output(input < at) = below_value;
output(input >= at) = above_value;

end

