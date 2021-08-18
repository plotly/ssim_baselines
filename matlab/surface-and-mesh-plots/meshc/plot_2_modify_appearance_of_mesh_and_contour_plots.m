[X,Y] = meshgrid(-5:.5:5);
Z = Y.*sin(X) - X.*cos(Y);
sc = meshc(X,Y,Z);
sc(1).EdgeColor = 'r';
sc(2).EdgeColor = 'b';
