th = linspace(0,3*pi/2,10);
r = linspace(5,20,10);
[u,v] = pol2cart(th,r);
compass(u,v);
view(-90,90);
