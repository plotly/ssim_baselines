X = linspace(0,2*pi,50);
Y = exp(0.3*X).*sin(3*X);
h = stem(X,Y);
hbase = h.BaseLine; 
hbase.LineStyle = '--';
hbase.Visible = 'off';
