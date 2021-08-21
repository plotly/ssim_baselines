x = [1 2 3];
vals = [2 3 6; 11 23 26];
b = barh(x,vals);
xtips1 = b(1).YEndPoints + 0.3;
ytips1 = b(1).XEndPoints;
labels1 = string(b(1).YData);
text(xtips1,ytips1,labels1,'VerticalAlignment','middle');
