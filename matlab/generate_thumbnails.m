clf reset
GENERATE_ONLY_MATLAB_THUMBNAILS = false;

% folder structure:
% -generate_offline_ssim_plots.m      : baseline script that loops though all folders
% --generate_offline_ssim_plots
% ---createplot.m                       : function exporting plots, called by baseline
% ---matlab_crash_image.png             : placeholder image used in place plotly plots that cause
%                                       MATLAB to crash, its pixel size is 600x189
% --name_of_plot_group
% ---name_of_plot_belonging_to_group
% ----plot_x_name.m                   : matlab script of the plot
% ----plot_x_name_matlab.png          : generated matlab .png
% ----plot_x_name_plotly.png          : generated plotly .png
% --thumbs                            : generated thumbnails

path_to_crash_image = dir("generate_thumbnails/error_placeholder.png");
path_to_crash_image = fullfile(path_to_crash_image.folder, path_to_crash_image.name);

files = dir("code-examples/");
files = files([files(:).isdir]); 
files = files(~ismember({files(:).name},{'.','..'}));
dir_flags = [files.isdir];
folders = files(dir_flags);

for folder = folders'
    path_folder = fullfile(folder.folder, folder.name);          % find subfolders
    sub_folders = dir(path_folder);
    sub_folders = sub_folders([sub_folders(:).isdir]); 
    sub_folders = sub_folders(~ismember({sub_folders(:).name},{'.','..'}));
    
    mkdir(strcat('thumbs/', folder.name, "/"))
    for sub_folder = sub_folders'
        
        path_sub = strcat(path_folder, '/', sub_folder.name);   % find all scripts
        scripts = dir(path_sub);
        scripts = scripts(~ismember({scripts(:).name},{'.','..'}));

        path_scipt = strcat(path_sub, '/', scripts(1).name);
        if contains(path_scipt, '.m')
            path_to_script = fullfile(folder.folder, folder.name, sub_folder.name, scripts(1).name);
            disp(path_to_script)
            create_thumbnail(path_to_script, folder.name, sub_folder.name, GENERATE_ONLY_MATLAB_THUMBNAILS, path_to_crash_image)

        end
    end
end