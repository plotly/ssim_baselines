x = 1:100;
y1 = x.^2;
y2 = x.^3;
semilogy(x,y1,'--',x,y2)
legend('x^2','x^3','Location','northwest');
