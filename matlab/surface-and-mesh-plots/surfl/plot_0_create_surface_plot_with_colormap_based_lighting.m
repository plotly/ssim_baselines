[X,Y] = meshgrid(1:0.5:10,1:20);
Z = sin(X) + cos(Y);
surfl(X,Y,Z);
