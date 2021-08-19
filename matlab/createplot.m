function createplot(path, path_scipt)

run(path);
pause(0.5);         % so that the code does not get overwhelemed

exportgraphics(gcf, replace(path_scipt, '.m', '_matlab.png'));        % write MATLAB image

try
    f = fig2plotly(gcf, 'open', false, 'strip', true); 
    
    write_image(f,'png', replace(path_scipt, '.m', '_plotly.png'));   % write plotly image
catch ME
    disp(strcat("++++++++++++ERROR", path))
    copyfile('\Matlab_code\matlab\matlab_crash_image.png', replace(path_scipt, '.m', '_plotly.png'))

end

clf reset % need to clean memory otherwise next plot will 
          % take on properties of this one and hence won't plot properly
end

