load wind;

xmin = min(x(:));
xmax = max(x(:));
ymin = min(y(:));
ymax = max(y(:));
zmin = min(z(:));

xrange = linspace(xmin,xmax,8);
yrange = linspace(ymin,ymax,8);
zrange = 3:4:15;
[cx,cy,cz] = meshgrid(xrange,yrange,zrange);

figure
hcone = coneplot(x,y,z,u,v,w,cx,cy,cz,5);

