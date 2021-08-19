x = randn(1000,1);
h = histogram(x);
h.NumBins = 15;
h.BinEdges = [-3:3];
h.FaceColor = [0 0.5 0.5];
h.EdgeColor = 'r';
