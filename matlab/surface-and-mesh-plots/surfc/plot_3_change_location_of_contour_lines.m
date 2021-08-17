Z = peaks;
sc = surfc(Z);
ax = gca;
ax.ZLim(2) = 15;
sc(2).ZLocation = 'zmax';
