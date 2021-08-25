tsunamis = readtable('tsunamis.xlsx');
figure('Units','normalized','Position',[0.3 0.3 0.45 0.4])
coordvars = {'Year','Validity','Cause','Country'};
p = parallelplot(tsunamis,'CoordinateVariables',coordvars,'GroupVariable','Validity');
