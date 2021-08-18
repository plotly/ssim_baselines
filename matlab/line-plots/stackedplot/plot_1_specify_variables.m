tbl = readtable('patients.xls');
head(tbl,3);
stackedplot(tbl,{'Height','Weight','Systolic','Diastolic'});
