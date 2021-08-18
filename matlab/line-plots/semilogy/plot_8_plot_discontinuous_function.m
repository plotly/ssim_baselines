x = 1:50;
y = x.^2;
y(20) = NaN;
semilogy(x,y);
