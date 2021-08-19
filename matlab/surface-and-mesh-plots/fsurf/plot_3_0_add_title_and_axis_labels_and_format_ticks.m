fsurf(@(x,y) y.*sin(x)-x.*cos(y),[-2*pi 2*pi])
title('ysin(x) - xcos(y) for x and y in [-2\pi,2\pi]')
xlabel('x');
ylabel('y');
zlabel('z');
box on;
