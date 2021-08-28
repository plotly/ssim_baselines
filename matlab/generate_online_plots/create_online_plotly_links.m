function create_online_plotly_links(path_to_plot_script, category_name, plot_name, script_name, write_file)

run(path_to_plot_script);    % script containing the plot code, outputting gcf
pause(0.5);                  % pause to prevent MATLAB from crashing and errors

try
    category = strcat('1A-plot-types/', category_name, '/', plot_name, '/', script_name);
    
    if strcmp(plot_name, 'pie3')
        f = fig2plotly(gcf, 'filename', category, 'offline', false, 'world_readable', true, 'open', false, 'TreatAs', plot_name);  % convert matlab plot gcf to plotly
    elseif strcmp(plot_name, 'pcolor')
        f = fig2plotly(gcf, 'filename', category, 'offline', false, 'world_readable', true, 'open', false, 'TreatAs', plot_name);  % convert matlab plot gcf to plotly
    elseif strcmp(plot_name, 'polarplot')
        f = fig2plotly(gcf, 'filename', category, 'offline', false, 'world_readable', true, 'open', false, 'TreatAs', plot_name);  % convert matlab plot gcf to plotly
    elseif strcmp(plot_name, 'contour3')
        f = fig2plotly(gcf, 'filename', category, 'offline', false, 'world_readable', true, 'open', false, 'TreatAs', plot_name);  % convert matlab plot gcf to plotly
    elseif strcmp(plot_name, 'compass')
        f = fig2plotly(gcf, 'filename', category, 'offline', false, 'world_readable', true, 'open', false, 'TreatAs', plot_name);  % convert matlab plot gcf to plotly
    elseif strcmp(plot_name, 'ezpolar')
        f = fig2plotly(gcf, 'filename', category, 'offline', false, 'world_readable', true, 'open', false, 'TreatAs', plot_name);  % convert matlab plot gcf to plotly
    elseif strcmp(plot_name, 'streamtube')
        f = fig2plotly(gcf, 'filename', category, 'offline', false, 'world_readable', true, 'open', false, 'TreatAs', plot_name, 'quality', 30, 'Zmin', 6);  % convert matlab plot gcf to plotly
    else
%         f = fig2plotly(gcf, 'filename', category, 'offline', false, 'strip', true, 'world_readable', true, 'open', false);  % convert matlab plot gcf to plotly
        f = fig2plotly(gcf, 'filename', category, 'offline', false, 'world_readable', true, 'open', false);  % convert matlab plot gcf to plotly
    end
    f = f.url;
catch
    disp(strcat("++++++++++++ERROR", path_to_plot_script))     % if creating/writing plotly crashes, catch and prevent from MATLAB from crashing
    f = 'error';
end

script_name = script_name(1:end-2);
ssim_comparison = strcat('https://raw.githubusercontent.com/plotly/ssim_baselines/main/out_matlab/matlab/', category_name, '/', plot_name, '/', script_name, '_montage.png');
ssim_map = strcat('https://raw.githubusercontent.com/plotly/ssim_baselines/main/out_matlab/matlab/', category_name, '/', plot_name, '/', script_name, '_ssim_map.png');

data = strcat(category_name, ',', plot_name, ',', script_name, ',', f, ',', ssim_comparison, ',', ssim_map, '\n');
disp(data)
fprintf(write_file, data);

clf reset  % need to clean memory otherwise next plot will 
           % take on properties of this one and hence won't plot properly
close gcf; % close the plot opened plot window otherwise there will be hundred of them by the end
end
