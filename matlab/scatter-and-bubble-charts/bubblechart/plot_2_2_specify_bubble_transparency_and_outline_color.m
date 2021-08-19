x = 1:20;
y = rand(1,20);
sz = rand(1,20);
bubblechart(x,y,sz);
bc = bubblechart(x,y,sz,'MarkerFaceAlpha',0.20);
bc.MarkerEdgeColor = [0.5 0 0.5];
