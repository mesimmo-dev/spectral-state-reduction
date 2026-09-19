# spectral-state-reduction

Compact MATLAB implementation for low-rank spectral state decomposition
and reconstruction.

## Method

The input matrix is mean-centered and decomposed using economy-size
singular value decomposition. A rank-k latent representation is retained
and used to reconstruct the centered system state.

## Usage

```matlab
X = randn(120, 8);

[Z, Xhat, variance] = spectral_reduce(X, 3);
