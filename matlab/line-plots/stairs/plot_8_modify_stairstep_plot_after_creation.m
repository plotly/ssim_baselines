X = linspace(0,1,30)';
Y = [cos(10*X), exp(X).*sin(10*X)];
h = stairs(X,Y);
h(1).Marker = 'o';
h(1).MarkerSize = 4;
h(2).Marker = 'o';
h(2).MarkerFaceColor = 'm';
