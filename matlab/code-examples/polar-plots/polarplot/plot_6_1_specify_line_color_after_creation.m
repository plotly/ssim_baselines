theta = linspace(0,2*pi,25);
rho = 2*theta;
p = polarplot(theta,rho);
p.Color = 'magenta';
p.Marker = 'square';
p.MarkerSize = 8;
