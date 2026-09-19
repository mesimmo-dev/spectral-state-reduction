function [Z, Xhat, variance] = spectral_reduce(X, k)
%SPECTRAL_REDUCE Low-rank spectral decomposition of a data matrix.
%
%   [Z, Xhat, variance] = spectral_reduce(X, k)
%
%   X        observations-by-features matrix
%   k        number of retained spectral components
%   Z        reduced state representation
%   Xhat     rank-k reconstruction
%   variance fraction of spectral energy retained

    Xc = X - mean(X, 1);

    [U, S, V] = svd(Xc, 'econ');

    Z = U(:, 1:k) * S(1:k, 1:k);
    Xhat = Z * V(:, 1:k)';

    energy = diag(S).^2;
    variance = sum(energy(1:k)) / sum(energy);
end
