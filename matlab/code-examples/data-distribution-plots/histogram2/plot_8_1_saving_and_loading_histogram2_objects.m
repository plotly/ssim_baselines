histogram2(randn(100,1),randn(100,1));
savefig('histogram2.fig');
close gcf;
h = openfig('histogram2.fig');
y = findobj(h,'type','histogram2');
