[X,Y] = meshgrid(-3:.125:3);
Z = peaks(X,Y);
C = gradient(Z);
waterfall(X,Y,Z,C)
colorbar;
