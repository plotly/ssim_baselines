x = [10 11 12];
Y = [21.6 25.4; 70.8 66.1; 58.0 43.6];
area(x,Y)
xlabel('Dealership ID')
ylabel('Sales')
legend({'Model A','Model B'});
ax = gca; % current axes
ax.XTick = x;
