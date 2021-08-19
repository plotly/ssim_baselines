plot(1:3)
hold on
C = [1 2 3; 4 5 6; 7 8 9];
im = image(C);
im.AlphaData = 0.5;
