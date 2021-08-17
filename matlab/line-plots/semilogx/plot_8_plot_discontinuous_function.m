x = logspace(-1,2);
y = x;
y(40) = NaN;
semilogx(x,y);
