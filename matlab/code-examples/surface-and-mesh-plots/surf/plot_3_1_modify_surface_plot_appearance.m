[X,Y] = meshgrid(-5:.5:5);
Z = Y.*sin(X) - X.*cos(Y);
s = surf(X,Y,Z,'FaceAlpha',0.5);
s.EdgeColor = 'none';
