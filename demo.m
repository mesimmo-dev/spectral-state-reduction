rng(42);

X = randn(120, 8);

[Z, Xhat, variance] = spectral_reduce(X, 3);

fprintf('Original dimensions: %d x %d\n', size(X));
fprintf('Reduced dimensions:  %d x %d\n', size(Z));
fprintf('Spectral energy retained: %.2f%%\n', variance * 100);
