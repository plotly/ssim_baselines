x = randn(1000,1);
y = randn(1000,1);
s = scatter(x,y,'filled');
distfromzero = sqrt(x.^2 + y.^2);
s.AlphaData = distfromzero;
s.MarkerFaceAlpha = 'flat';
