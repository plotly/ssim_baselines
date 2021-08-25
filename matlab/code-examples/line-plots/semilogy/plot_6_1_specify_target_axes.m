tiledlayout('flow')
ax1 = nexttile;
x = 1:100;
y1 = x.^2;
semilogy(ax1,x,y1);
ax2 = nexttile;
y2 = 1./x;
semilogy(ax2,x,y2);
