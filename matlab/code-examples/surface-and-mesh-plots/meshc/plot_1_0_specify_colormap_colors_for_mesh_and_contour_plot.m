[X,Y] = meshgrid(-3:.125:3);
Z = peaks(X,Y);
C = X.*Y;
meshc(X,Y,Z,C)
colorbar;
