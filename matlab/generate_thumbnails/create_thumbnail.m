function create_thumbnail(path_to_script, category_name, plot_name, GENERATE_ONLY_MATLAB_THUMBNAILS, path_to_crash_image)

    pause(0.5)    % pause to let it catch up and prevent problems
    
    %%% SET CONSTANTS %%%
    save_location = strcat('thumbs/', category_name, "/", plot_name, '.png');

    %%% Make MATALB Figure tiny %%%
    run(path_to_script);
    matlab_fig = gcf;
    matlab_fig.Position = [0 0 160 160];
    
    if GENERATE_ONLY_MATLAB_THUMBNAILS == true
        saveas(gcf, save_location)
    else
        try
            if strcmp(plot_name, 'pie3')
                f = fig2plotly(matlab_fig, 'open', false, 'TreatAs', plot_name);  % convert matlab plot gcf to plotly
            elseif strcmp(plot_name, 'pcolor')
                f = fig2plotly(matlab_fig, 'open', false, 'TreatAs', plot_name);  % convert matlab plot gcf to plotly
            elseif strcmp(plot_name, 'polarplot')
                f = fig2plotly(matlab_fig, 'open', false, 'TreatAs', plot_name);  % convert matlab plot gcf to plotly
            else
                f = fig2plotly(matlab_fig, 'open', false);  % convert matlab plot gcf to plotly
            end
            
            f.layout.margin.t = 0;
            f.layout.margin.b = 0;
            f.layout.margin.l = 0;
            f.layout.margin.r = 0;
            write_image(f,'png', save_location, 160, 160, 2)
        catch
            copyfile(path_to_crash_image, save_location )

        end
    end
    
    clf reset  % need to clean memory otherwise next plot will 
               % take on properties of this one and hence won't plot properly
    close gcf; % close the plot opened plot window otherwise there will be hundred of them by the end
end