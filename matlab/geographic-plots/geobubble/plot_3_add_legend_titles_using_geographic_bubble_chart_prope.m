tsunamis = readtable('tsunamis.xlsx');
colordata = categorical(tsunamis.Cause);
gb = geobubble(tsunamis.Latitude,tsunamis.Longitude,tsunamis.MaxHeight,colordata,'Title','Tsunamis');
gb.SizeLegendTitle = 'Max Height';
gb.ColorLegendTitle = 'Cause';
