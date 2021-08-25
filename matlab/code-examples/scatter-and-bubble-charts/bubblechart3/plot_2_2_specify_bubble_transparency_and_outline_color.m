x = rand(1,20);
y = rand(1,20);
z = rand(1,20);
sz = rand(1,20);
bubblechart3(x,y,z,sz);
bc = bubblechart3(x,y,z,sz,'MarkerFaceAlpha',0.20);
bc.MarkerEdgeColor = [0.5 0 0.5];
