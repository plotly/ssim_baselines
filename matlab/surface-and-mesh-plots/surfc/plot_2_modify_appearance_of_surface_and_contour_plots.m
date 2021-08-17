[X,Y] = meshgrid(-5:.5:5);
Z = Y.*sin(X) - X.*cos(Y);
sc = surfc(X,Y,Z,'FaceColor','b');
sc(1).EdgeColor = 'r';
sc(2).EdgeColor = 'b';
