load patients
tbl = table(Diastolic,Smoker,Systolic);
p = parallelplot(tbl);
p.Jitter = 0;
