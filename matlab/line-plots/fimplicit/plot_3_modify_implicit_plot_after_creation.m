fp = fimplicit(@(x,y) y.*sin(x) + x.*cos(y) - 1);
fp.Color = 'r';
fp.LineStyle = '--';
fp.LineWidth = 2;
