x = 1:100;
y1 = x.^2;
y2 = x.^3;
slg = semilogy(x,y1,x,y2);
slg(1).LineWidth = 3;
slg(2).Color = [0.4 0 1];
