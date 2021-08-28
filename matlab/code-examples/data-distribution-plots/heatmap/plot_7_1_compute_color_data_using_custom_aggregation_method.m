tbl = readtable('TemperatureData.csv');
months = categorical(tbl.Month);
years = categorical(tbl.Year);
xlabels = categories(months);
ylabels = categories(years);
nummonths = numel(xlabels);
numyears = numel(ylabels);
