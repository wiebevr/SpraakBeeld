function [ output ] = histogram_equalisation( input )
%HISTOGRAM_EQUALISATION 

hist = histc(reshape(input, 1, []), 0:255);
hist_cum = cumsum(hist);
hist_sum = hist_cum(end);
hist_cum_norm = hist_cum / hist_sum;

max_value = 255;
hist_cum_map = uint8(round(hist_cum_norm .* double(max_value)));

output = cell2mat(arrayfun(@(value) {hist_cum_map(value + 1)}, input));

end

