load patients
b = bubblecloud(Weight(1:20),SelfAssessedHealthStatus(1:20), ...
    'FaceColor',[0.3 0.6 0.4]);
b.GroupData = Smoker(1:20);
b.LegendTitle = "Smoker";
f = gcf;
f.Position([3 4]) = [655 395];
b.FontSize = 9;
b.FaceColor = 'flat';
b.EdgeColor = 'flat';
b.ColorOrder = [0.3 0.6 0.4; 0.4 0.3 0.6];
colororder(b,["#E6CC1A"; "#4D9966"]);
