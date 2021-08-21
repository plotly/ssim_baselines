tiledlayout(1,2)

% Left plot
ax1 = nexttile;
C1 = rand(20,10);
pcolor(ax1,C1)

% Right plot
ax2 = nexttile;
C2 = rand(50,10);
pcolor(ax2,C2);
