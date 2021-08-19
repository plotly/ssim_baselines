tsunamis = readtable('tsunamis.xlsx');
cause = categorical(tsunamis.Cause);
geobubble(tsunamis.Latitude,tsunamis.Longitude,tsunamis.MaxHeight,cause);
