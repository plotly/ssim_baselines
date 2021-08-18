[X,Y] = meshgrid(1:20);
LY = log(Y);
colorscale = [1:20; 20:-1:1];
C = repmat(colorscale,10,1);
s = pcolor(X,LY,C);
tickvals = LY(2:2:20,1)';
set(gca,'YTick',tickvals);
