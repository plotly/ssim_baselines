x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);
sz = 25;
c = linspace(1,10,length(x));
scatter(x,y,sz,c,'filled');
