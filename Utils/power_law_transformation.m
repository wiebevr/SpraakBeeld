function [ output ] = power_law_transformation( input, constant, exponent )
%POWER_LAW_TRANSFORMATION Calculates the power law transformation,
% constant is the constant.

output = double(input);
output = constant * output.^exponent;

end

