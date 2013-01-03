function [C, m] = covmatrix(X)
% Computes the covariance matrix of a vector population

[K,n] = size(X);
if n == 1   %Special case
    C = 0;
    m = X;
else
    % Compute an unbiased estimate of m
    m = sum(X, 1)/K;
    % subtract the mean from each row of X
    X = X - m(ones(K, 1), :);
    %compute an unbiased estimate of C. Note that the product is
    %X'*X because the vector are rows of X.
    C = (X'*X)/(K - 1);
    m = m'; % Convert to a column vector
end 