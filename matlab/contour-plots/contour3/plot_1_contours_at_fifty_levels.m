[X,Y] = meshgrid(-5:0.25:5);
Z = X.^2 + Y.^2;
contour3(Z);
contour3(X,Y,Z,50);
