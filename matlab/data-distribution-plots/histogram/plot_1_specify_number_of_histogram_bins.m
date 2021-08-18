x = randn(1000,1);
nbins = 25;
h = histogram(x,nbins);
counts = h.Values;
