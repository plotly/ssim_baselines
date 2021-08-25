tbl = readtable('outages.csv');
tbl = table2timetable(tbl);
head(tbl,5);
tbl = sortrows(tbl);
head(tbl,5);
stackedplot(tbl);
