function polarscatter_0()
th = pi/4:pi/4:2*pi;
r = [19 6 12 18 16 11 15 15];
polarscatter(th,r);
thumbnail_generator(gcf, 'polar_plots', 'polarscatter', false);

end