load outdoors
outdoors(1:3,:);
s = stackedplot(outdoors);
s.LineWidth = 2;
s.LineProperties;
s.LineProperties(2).PlotType = 'scatter';
s.LineProperties(3).PlotType = 'stairs';
