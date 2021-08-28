% % playground test file
load wind
[sx,sy,sz] = meshgrid(80,20:10:50,0:5:15);
streamtube(x,y,z,u,v,w,sx,sy,sz);
view(3);
axis tight
shading interp;
camlight; 
lighting gouraud

% saveas(gcf, "D:\Matlab_code\matlab\test_matlab.png");
f = fig2plotly(gcf, 'open', false);  % convert matlab plot gcf to plotly
write_image(f, 'png', "D:\Matlab_code\matlab\test_plotly.png");  % write plotly image

% fid = fopen('test.csv','w') ;
% for i = 1:5
%     C = horzcat('hello', 'you');
%     fprintf(fid, strcat('hello', ',', 'you', '\n')) ;
% end
% fclose(fid) ;
