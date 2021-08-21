load count.dat;
Y = count(1:10,:);
width = 0.5;

figure
bar3h(Y,width)
title('Width of 0.5');
