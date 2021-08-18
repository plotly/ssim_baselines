X = linspace(0,2*pi,50)';
Y = (exp(0.3*X).*sin(3*X));
stem(X,Y,'BaseValue',2);
