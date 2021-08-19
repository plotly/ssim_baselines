X = categorical({'North','South','North','East','South','West'});
explode = {'North','South'};
pie(X,explode);
explode = [0 1 1 0];
pie(X,explode);
