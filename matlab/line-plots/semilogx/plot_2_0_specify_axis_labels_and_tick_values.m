f = logspace(1,5,100);
v = linspace(-50,50,100);
gain = (1-exp(5*(2.5*v.^2)./7500))/14;
semilogx(f,gain)
grid on;
