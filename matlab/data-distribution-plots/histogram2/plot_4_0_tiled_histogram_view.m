x = 2*randn(1000,1)+2;
y = 5*randn(1000,1)+3;
h = histogram2(x,y,'DisplayStyle','tile','ShowEmptyBins','on');
