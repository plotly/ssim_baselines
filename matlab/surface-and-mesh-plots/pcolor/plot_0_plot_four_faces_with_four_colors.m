X = [1 2 3; 1 2 3; 1 2 3];
Y = X';
mymap = [1 0 0; 0 1 0; 0 0 1; 1 1 0; 0 0 0];
C = [3 4 5; 1 2 5; 5 5 5];
pcolor(X,Y,C)
colormap(mymap);
