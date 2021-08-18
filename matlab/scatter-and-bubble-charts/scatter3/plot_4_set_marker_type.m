rng default
z = linspace(0,4*pi,250);
x = 2*cos(z) + rand(1,250);
y = 2*sin(z) + rand(1,250);
figure
scatter3(x,y,z,'*')
view(-30,10);
