function [ output ] = euclidean_distance_thresholds( sample )
% Calculate the color threshold for all 3 color channels, input is the
% sample color image. Pixel with value -1 are ignored. Returns a vector containing
% tuples which represent the threshold for each channel.

sample = double(sample);

% Remove -1

r = reshape(sample(:,:,1), 1, []);
g = reshape(sample(:,:,2), 1, []);
b = reshape(sample(:,:,3), 1, []);

r(r == -1) = [];
g(g == -1) = [];
b(b == -1) = [];
sample = cell(1);

sample{1} = r;
sample{2} = g;
sample{3} = b;

% Compute the mean vector
mean_vector = zeros(1, 3);
for i=1:3
    mean_vector(i) = mean(sample{i});
end

% Compute the standard deviation
std_dev = zeros(1, 3);
for i=1:3
    std_dev(i) = std(sample{i});
end

% Compute the treshlods
output = zeros(3, 2);
for i=1:3
   output(i, 1) = mean_vector(i) - 1.25 .* std_dev(i);
   output(i, 2) = mean_vector(i) + 1.25 .* std_dev(i);   
end

end

