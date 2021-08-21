load patients
X = [Age Height Weight];
p = parallelplot(X);
p.CoordinateTickLabels = {'Age (years)','Height (inches)','Weight (pounds)'};
min(Height);
max(Height);
binEdges = [60 64 68 72];
bins = {'short','average','tall'};
groupHeight = discretize(Height,binEdges,'categorical',bins);
