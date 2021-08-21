f1 = @(x,y) erf(x)+cos(y);
fsurf(f1,[-5 0 -5 5])
hold on
f2 = @(x,y) sin(x)+cos(y);
fsurf(f2,[0 5 -5 5])
hold off;
