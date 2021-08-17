function createplot(path, path_scipt)

run(path);
pause(0.5);         % so that the code does not get overwhelemed

% write MATLAB image
exportgraphics(gcf, replace(path_scipt, '.m', '_matlab.png'));

try
%     f = fig2plotly(gcf, 'offline', false, 'strip', true); 
    f = fig2plotly(gcf, 'open', false, 'strip', true); 
    % write plotly image
    write_image(f,'png', replace(path_scipt, '.m', '_plotly.png'));
catch ME
    disp(strcat("++++++++++++ERROR", path))
    copyfile('\Matlab_code\matlab\matlab_crash_image.png','\Matlab_code\matlab\data-distribution-plots\parallelplot\plot_speci_plotly.png')

end

clf reset % need to clean memory otherwise next plot will 
          % take on properties of this one and hence won't plot properly
% close(f)
end

