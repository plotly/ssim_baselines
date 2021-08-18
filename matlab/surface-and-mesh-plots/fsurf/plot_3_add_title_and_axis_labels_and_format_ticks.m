fsurf(@(x,y) y.*sin(x)-x.*cos(y),[-2*pi 2*pi])
title('ysin(x) - xcos(y) for x and y in [-2\pi,2\pi]')
xlabel('x');
ylabel('y');
zlabel('z');
box on;
ax = gca;
ax.XTick = -2*pi:pi/2:2*pi;
ax.XTickLabel = {'-2\pi','-3\pi/2','-\pi','-\pi/2','0','\pi/2','\pi','3\pi/2','2\pi'};

ax.YTick = -2*pi:pi/2:2*pi;
ax.YTickLabel = {'-2\pi','-3\pi/2','-\pi','-\pi/2','0','\pi/2','\pi','3\pi/2','2\pi'};
