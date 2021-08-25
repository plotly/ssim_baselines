xt = @(t)exp(-abs(t)/10).*sin(5*abs(t));
yt = @(t)exp(-abs(t)/10).*cos(5*abs(t));
zt = @(t)t;
fp = fplot3(xt,yt,zt);
fp.TRange = [-10 10];
fp.Color = 'r';
