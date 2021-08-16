files = dir;
dir_flags = [files.isdir];
folders = files(dir_flags);

for folder = folders'
    fn = folder.name;
    scripts = dir(fn);
    for script = scripts'
        path = strcat(fn, '/', script.name);
        if contains(path, '.m') & contains(path, 'baseline') == false
            disp(path);
            run(path);
            pause(2);
            f = fig2plotly(gcf, 'open', false, 'strip', true);
            % write plotly image
            write_image(f,'png', replace(path, '.m', '_plotly.png'));
            % write MATLAB image
            exportgraphics(gcf, replace(path, '.m', '_matlab.png'));            
        end
    end
end