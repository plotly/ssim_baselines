tiledlayout(2,1)
nexttile
fsurf(@(s,t) sin(s), @(s,t) cos(s), @(s,t) t/10.*sin(1./s))
view(-172,25)
title('Default MeshDensity = 35')

nexttile
fsurf(@(s,t) sin(s), @(s,t) cos(s), @(s,t) t/10.*sin(1./s),'MeshDensity',40)
view(-172,25)
title('Increased MeshDensity = 40');
