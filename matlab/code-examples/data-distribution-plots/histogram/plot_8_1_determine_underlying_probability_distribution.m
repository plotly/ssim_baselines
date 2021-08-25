x = 2*randn(5000,1) + 5;
histogram(x,'Normalization','pdf');
hold on
y = -5:0.1:15;
mu = 5;
sigma = 2;
f = exp(-(y-mu).^2./(2*sigma^2))./(sigma*sqrt(2*pi));
plot(y,f,'LineWidth',1.5);
