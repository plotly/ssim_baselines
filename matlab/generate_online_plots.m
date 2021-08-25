% code takes approximately 70 minutes to complete. This is caused by the
% plot drawing time, and fig2plotly then interpreting it. There is 0.5s
% pause after every plot is generated, but don't remove that, otherwise
% program will encounter problems


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

% path_to_crash_image = dir("generate_offline_ssim_plots/matlab_crash_image.png");
% path_to_crash_image = fullfile(path_to_crash_image.folder, path_to_crash_image.name);
write_file = fopen('links_for_python_md_finish.csv','w') ;

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
    
    for sub_folder = sub_folders'
        path_sub = strcat(path_folder, '/', sub_folder.name);   % find all scripts
        scripts = dir(path_sub);
        scripts = scripts(~ismember({scripts(:).name},{'.','..'}));
        disp("------")
        
        for script = scripts'
            path_scipt = strcat(path_sub, '/', script.name);
            if contains(path_scipt, '.m')
                path_to_script = fullfile(folder.folder, folder.name, sub_folder.name, script.name);
                
                % call it in a function so that worskpace does not create
                % variables that will interfere and ruin other plots
                create_online_plotly_links(path_to_script, folder.name, sub_folder.name, script.name, write_file) 
            end
        end
    end
end
