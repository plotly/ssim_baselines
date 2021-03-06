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

hcone.FaceColor = 'red';
hcone.EdgeColor = 'none';

hold on
wind_speed = sqrt(u.^2 + v.^2 + w.^2);

hsurfaces = slice(x,y,z,wind_speed,[xmin,xmax],ymax,zmin);
set(hsurfaces,'FaceColor','interp','EdgeColor','none')
hold off;

view(30,40)
daspect([2,2,1]);

