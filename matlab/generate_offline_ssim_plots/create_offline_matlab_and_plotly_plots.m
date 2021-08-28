function create_offline_matlab_and_plotly_plots(path_to_plot_script, path_to_crash_image, plot_name)

run(path_to_plot_script);    % script containing the plot code, outputting gcf
pause(0.5);                  % pause to prevent MATLAB from crashing and errors

image_save_location_matlab = replace(path_to_plot_script, '.m', '_matlab.png'); % path/something.m to path/something_matlab.png
image_save_location_plotly = replace(path_to_plot_script, '.m', '_plotly.png'); % path/something.m to path/something_plotly.png

saveas(gcf, image_save_location_matlab);        % write MATLAB image

try
      
    if strcmp(plot_name, 'pie3')
        f = fig2plotly(gcf, 'TreatAs', plot_name);  % convert matlab plot gcf to plotly
    elseif strcmp(plot_name, 'pcolor')
        f = fig2plotly(gcf, 'TreatAs', plot_name);  % convert matlab plot gcf to plotly
    elseif strcmp(plot_name, 'polarplot')
        f = fig2plotly(gcf, 'TreatAs', plot_name);  % convert matlab plot gcf to plotly
    elseif strcmp(plot_name, 'contour3')
        f = fig2plotly(gcf, 'TreatAs', plot_name);  % convert matlab plot gcf to plotly
    elseif strcmp(plot_name, 'compass')
        f = fig2plotly(gcf, 'TreatAs', plot_name);  % convert matlab plot gcf to plotly
    elseif strcmp(plot_name, 'ezpolar')
        f = fig2plotly(gcf, 'TreatAs', plot_name);  % convert matlab plot gcf to plotly
    elseif strcmp(plot_name, 'streamtube')
        f = fig2plotly(gcf, 'open', false, 'TreatAs', plot_name, 'quality', 30, 'Zmin', 6);  % convert matlab plot gcf to plotly
    else
        f = fig2plotly(gcf, 'open', false);  % convert matlab plot gcf to plotly
    end

    write_image(f, 'png', image_save_location_plotly);  % write plotly image
catch
    disp(strcat("++++++++++++ERROR", path_to_plot_script))     % if creating/writing plotly crashes, catch and prevent from MATLAB from crashing
    error_image_save_location_plotly = replace(image_save_location_plotly, '.png', '_ERROR_CRASH_.png');
    copyfile(path_to_crash_image, error_image_save_location_plotly )  % and save placeholder error image in _plotly.png' place
end

clf reset  % need to clean memory otherwise next plot will 
           % take on properties of this one and hence won't plot properly
close gcf; % close the plot opened plot window otherwise there will be hundred of them by the end
end

