tiledlayout('flow')
ax1 = nexttile;
x = logspace(-1,2);
y1 = 10.^x;
loglog(ax1,x,y1);
ax2 = nexttile;
y2 = 1./10.^x;
loglog(ax2,x,y2);
