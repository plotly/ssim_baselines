rng default
X = randn(50,3);
[S,AX,BigAx,H,HAx] = plotmatrix(X);
S(3).Color = 'g';
S(3).Marker = '*';  

H(3).EdgeColor = 'k';
H(3).FaceColor = 'g';  

title(BigAx,'A Comparison of Data Sets');
