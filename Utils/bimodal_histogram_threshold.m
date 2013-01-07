function [ threshold ] = bimodal_histogram_threshold( input, threshold_diff )
%BIMODAL_HISTOGRAM_THRESHOLD Returns the bimodal histogram treshold, the
%threshold that lies between the two lumps in the histogram.

hist = histc(reshape(input, 1, []), 0:255);

% We start in the middle
threshold = uint8(255 / 2);

while true
    % Divide the histogram into two segments
    segment_1 = hist(1:threshold);
    segment_2 = hist(threshold:255);

    avg_1 = mean(segment_1);
    avg_2 = mean(segment_2);
    
    [~, avg_index_1] = min(abs(segment_1 - avg_1))
    [~, avg_index_2] = min(abs(segment_2 - avg_2))
    
    % Compute the new treshold value
    
    new_threshold = uint8((avg_index_1 + avg_index_2 + threshold) / 2);
    
    % We break out of this loop if the difference between the old and the 
    % new treshold is between acceptable bounds as defined by the user.
    if abs(new_threshold - threshold) <= threshold_diff
        threshold = new_threshold - 1;
        return;
    end
    threshold = new_threshold
end

end

