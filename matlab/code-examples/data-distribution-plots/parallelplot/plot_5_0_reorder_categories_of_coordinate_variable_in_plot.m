outages = readtable('outages.csv');
coordvars = [1 3 4 6];
p = parallelplot(outages,'CoordinateVariables',coordvars,'GroupVariable','Cause');
