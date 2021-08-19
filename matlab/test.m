% playground test file

fp = fplot(@(x) sin(x));
fp.LineStyle = ':';
fp.Color = 'r';
fp.Marker = 'x';
fp.MarkerEdgeColor = 'b';



saveas(gcf, "D:\Matlab_code\matlab\test_matlab.png");
f = fig2plotly(gcf, 'open', false, 'strip', true);  % convert matlab plot gcf to plotly
write_image(f, 'png', "D:\Matlab_code\matlab\test_plotly.png");  % write plotly image