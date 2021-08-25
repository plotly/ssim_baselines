fcontour(@(x,y) erf(x) + cos(y),[-5 0 -5 5])
hold on
fcontour(@(x,y) sin(x) + cos(y),[0 5 -5 5])
hold off
grid on;
