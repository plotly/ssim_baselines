T = readtable('outages.csv');
T(1:5,:);
h = heatmap(T,'Region','Cause');
h.ColorScaling = 'scaledcolumns';
h.ColorScaling = 'scaledrows';
