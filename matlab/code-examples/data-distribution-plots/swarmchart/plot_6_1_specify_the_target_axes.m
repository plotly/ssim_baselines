tbl = readtable(fullfile(matlabroot,'examples','matlab','data','BicycleCounts.csv'));
tbl(1:5,:);
daynames = ["Sunday" "Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday"];
x = categorical(tbl.Day,daynames);
yEast = tbl.Eastbound;
yWest = tbl.Westbound;
tiledlayout('flow')
ax1 = nexttile;
y = tbl.Eastbound;
swarmchart(ax1,x,y,'.');
ax2 = nexttile;
y = tbl.Westbound;
s = swarmchart(ax2,x,y,'.');
