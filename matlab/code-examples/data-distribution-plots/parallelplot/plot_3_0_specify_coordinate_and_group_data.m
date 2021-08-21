load patients
X = [Age Height Weight];
coorddata = [1 3];
p = parallelplot(X,'CoordinateData',coorddata,'GroupData',Smoker);
