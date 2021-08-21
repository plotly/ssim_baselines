f = @(x,y) erf((y+2).^3) - exp(-0.65*((x-2).^2+(y-2).^2));
fcontour(f,'Fill','on');
