[X,Y,Z] = sphere(10);
[U,V,W] = surfnorm(X,Y,Z);
quiver3(X,Y,Z,U,V,W,0)
axis equal;
