x = randn(1000,1);
y = randn(1000,1);
h = histogram2(x,y,'Normalization','probability');
S = sum(h.Values(:));
