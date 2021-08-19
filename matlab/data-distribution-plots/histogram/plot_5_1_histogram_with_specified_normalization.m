x = randn(1000,1);
h = histogram(x,'Normalization','probability');
S = sum(h.Values);
