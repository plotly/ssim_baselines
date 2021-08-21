load count.dat
Z = count(1:10,:);
width = 0.5;

figure
bar3(Z,width)
title('Bar Width of 0.5');
