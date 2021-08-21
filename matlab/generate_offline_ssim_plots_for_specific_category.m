plot_group = {'contour-plots', 'contour-plots'};
plot_type = {'contour', 'contour3'};


% code
path_to_crash_image = dir("generate_offline_ssim_plots/matlab_crash_image.png");
path_to_crash_image = fullfile(path_to_crash_image.folder, path_to_crash_image.name);

% find all files in the dictionary
files = dir("code-examples/");
files = files([files(:).isdir]); 
files = files(~ismember({files(:).name},{'.','..'}));
dir_flags = [files.isdir];
folders = files(dir_flags);

% if the plot_group, plot_type enetered is empty or not match array
if ~isempty(plot_group) || ~isempty(plot_type) || length(plot_group) ~= length(plot_type)
    for idx = 1:length(plot_group)    % loop through every plot_group   
        for folder = folders'         % go into the corresponding subfolders
            if strcmp(plot_group{idx}, folder.name) % only go in those that are in plot_group
                path_folder = fullfile(folder.folder, folder.name);          % find subfolders
                sub_folders = dir(path_folder);
                sub_folders = sub_folders([sub_folders(:).isdir]); 
                sub_folders = sub_folders(~ismember({sub_folders(:).name},{'.','..'}));
                for sub_folder = sub_folders'       % go thourgh them all
                    if strcmp(plot_type{idx}, sub_folder.name) % only go in those that are in plot_type
                        
                        path_sub = strcat(path_folder, '/', sub_folder.name);   % find all scripts
                        scripts = dir(path_sub);
                        scripts = scripts(~ismember({scripts(:).name},{'.','..'}));
                        for script = scripts'                                   % go thourgh them all
                            path_scipt = strcat(path_sub, '/', script.name);
                            if contains(path_scipt, '.m')
                                path_to_script = fullfile(folder.folder, folder.name, sub_folder.name, script.name);
                                disp(path_to_script)

                                % call it in a function so that worskpace does not create
                                % variables that will interfere and ruin other plots
                                create_offline_matlaba_and_plotly_plots(path_to_script, path_to_crash_image)                                              % variables that will interfere and ruin other plots
                            end
                        end
                    end
                end
            end
        end
        
    end
end



