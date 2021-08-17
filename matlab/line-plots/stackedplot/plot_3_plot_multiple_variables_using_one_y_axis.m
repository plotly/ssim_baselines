load patients
tbl = table(Weight,Systolic,Diastolic);
head(tbl,3);
vars = {{'Systolic','Diastolic'},'Weight'};
stackedplot(tbl,vars);
