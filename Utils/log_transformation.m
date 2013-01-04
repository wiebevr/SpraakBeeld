function [ output ] = log_transformation( input, c )
%LOG_TRANSFORMATION Applies the log transformation to an
% image c is the constant.
% TODO: Moet log ln of log10 zijn?

output = double(input);
output = c * log (1 + output);

end

