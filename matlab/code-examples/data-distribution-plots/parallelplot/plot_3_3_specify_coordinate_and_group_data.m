load patients
X = [Age Height Weight];
coorddata = [1 3];
p = parallelplot(X,'CoordinateData',coorddata,'GroupData',Smoker);
p.CoordinateTickLabels = {'Age','Weight'};
coorddata2 = [2 3];
p2 = parallelplot(X,'CoordinateData',coorddata2,'GroupData',Gender);
p2.CoordinateTickLabels = {'Height','Weight'};
