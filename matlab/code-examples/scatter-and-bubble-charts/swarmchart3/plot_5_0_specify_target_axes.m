tbl = readtable(fullfile(matlabroot,'examples','matlab','data','BicycleCounts.csv'));
tbl(1:5,:);
daynames = ["Sunday" "Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday"];
x = categorical(tbl.Day,daynames);
ispm = tbl.Timestamp.Hour<12;
y = categorical;
y(ispm) = 'pm';
y(~ispm) = 'am';
ze = tbl.Eastbound;
zw = tbl.Westbound;