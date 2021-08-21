xmin = -7; xmax = 7;
ymin = -7; ymax = 7; 
zmin = -7; zmax = 7; 
x = linspace(xmin,xmax,30);
y = linspace(ymin,ymax,20);
z = linspace(zmin,zmax,20);
[x,y,z] = meshgrid(x,y,z);
u = y; 
v = -x; 
w = 0*x+1;
[cx,cy,cz] = meshgrid(linspace(xmin,xmax,30),...
   linspace(ymin,ymax,30),[-3 4]);
h = coneplot(x,y,z,u,v,w,cx,cy,cz,'quiver');
set(h,'Color','k');
