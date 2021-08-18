t = -pi/2:pi/8:pi/2;
u = 10*sin(t);
v = 10*cos(t);
f = feather(u,v);
f1 = f(1);
f1.Color = 'r';
f1.LineWidth = 2;
