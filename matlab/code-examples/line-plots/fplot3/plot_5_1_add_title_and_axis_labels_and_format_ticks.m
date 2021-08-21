xt = @(t)t;
yt = @(t)t/2;
zt = @(t)sin(6*t);
fplot3(xt,yt,zt,[-2*pi 2*pi],'MeshDensity',30,'LineWidth',1);

title('x=t, y=t/2, z=sin(6t) for -2\pi<t<2\pi')
xlabel('x');
ylabel('y');
view(52.5,30)
box on;
ax = gca;
ax.XTick = -2*pi:pi/2:2*pi;
ax.XTickLabel = {'-2\pi','-3\pi/2','-\pi','-\pi/2','0','\pi/2','\pi','3\pi/2','2\pi'};
ax.YTick = -pi:pi/2:pi;
ax.YTickLabel = {'-\pi','-\pi/2','0','\pi/2','\pi'};
