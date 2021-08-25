[X,Y] = meshgrid(1:0.5:10,1:20);
Z = sin(X) + cos(Y);
s = [-45 20];
k = [.65 .4 .3 10];
sl = surfl(X,Y,Z,s,k);
sl.EdgeColor = 'none';
