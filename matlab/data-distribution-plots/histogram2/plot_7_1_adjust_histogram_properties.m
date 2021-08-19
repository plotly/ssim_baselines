x = randn(1000,1);
y = randn(1000,1);
h = histogram2(x,y);
h.FaceColor = 'flat';
h.NumBins = [10 25];
h.DisplayStyle = 'tile';
view(2);
