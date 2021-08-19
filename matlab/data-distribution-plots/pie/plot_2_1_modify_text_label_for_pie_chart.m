X = 1:3;
labels = {'Taxes','Expenses','Profit'};
p = pie(X,labels);
t = p(6);
t.BackgroundColor = 'cyan';
t.EdgeColor = 'red';
t.FontSize = 14;
