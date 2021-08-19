x = logspace(-1,2);
y1 = 10.^x;
y2 = 1./10.^x;
lg = loglog(x,y1,x,y2);
