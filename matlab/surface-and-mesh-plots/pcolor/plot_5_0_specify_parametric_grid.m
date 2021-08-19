[X,Y] = meshgrid(-3:6/17:3);
XX = 2*X.*Y;
YY = X.^2 - Y.^2;
colorscale = [1:18; 18:-1:1];
C = repmat(colorscale,9,1);
pcolor(XX,YY,C);
