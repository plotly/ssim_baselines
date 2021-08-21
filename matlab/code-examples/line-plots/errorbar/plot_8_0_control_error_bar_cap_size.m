x = linspace(0,2,15);
y = exp(x);
err = 0.3*ones(size(y));
errorbar(x,y,err,'CapSize',18);
