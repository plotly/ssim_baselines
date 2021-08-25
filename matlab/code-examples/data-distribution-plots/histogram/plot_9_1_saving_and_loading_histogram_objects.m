histogram(randn(10));
savefig('histogram.fig');
close gcf;
h = openfig('histogram.fig');
y = findobj(h,'type','histogram');
