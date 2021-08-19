th = pi/6:pi/6:2*pi;
r = rand(12,1);
ps = polarscatter(th,r,'filled');
ps.Marker = 'square';
ps.SizeData = 200;
ps.MarkerFaceColor = 'red';
ps.MarkerFaceAlpha = .5;
