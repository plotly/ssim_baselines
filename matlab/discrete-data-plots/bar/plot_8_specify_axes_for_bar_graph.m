y = [1 2 3; 4 5 6];
tiledlayout(2,1)

% Top bar graph
ax1 = nexttile;
bar(ax1,y)

% Bottom bar graph
ax2 = nexttile;
bar(ax2,y,'stacked');
