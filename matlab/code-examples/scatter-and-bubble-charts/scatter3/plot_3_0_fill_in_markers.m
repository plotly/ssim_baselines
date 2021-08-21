z = linspace(0,4*pi,250);
x = 2*cos(z) + rand(1,250);
y = 2*sin(z) + rand(1,250);
scatter3(x,y,z,'filled')
view(-30,10);
