funx = @(u,v) u.*sin(v);
funy = @(u,v) -u.*cos(v);
funz = @(u,v) v;

fsurf(funx,funy,funz,[-5 5 -5 -2],'--','EdgeColor','g')
hold on
fsurf(funx,funy,funz,[-5 5 -2 2],'EdgeColor','none')
hold off;
