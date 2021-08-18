files = dir();
files = files([files(:).isdir]); 
files = files(~ismember({files(:).name},{'.','..'}));
dir_flags = [files.isdir];
folders = files(dir_flags);

for folder = folders'
    path_folder = folder.name;
    sub_folders = dir(path_folder);
    sub_folders = sub_folders([sub_folders(:).isdir]); 
    sub_folders = sub_folders(~ismember({sub_folders(:).name},{'.','..'}));
    
    for sub_folder = sub_folders'
        path_sub = strcat(folder.name, '/', sub_folder.name);
        scripts = dir(path_sub);
        scripts = scripts(~ismember({scripts(:).name},{'.','..'}));
        disp("------")
        
        for script = scripts'
            path_scipt = strcat(path_sub, '/', script.name);
            if contains(path_scipt, '.m')
%                 disp(path_scipt)
                path = fullfile(folder.folder, folder.name, sub_folder.name, script.name);
                createplot(path, path_scipt) % call it in a function so that worskpace does not create
                                             % variables that will interfere and ruin other plots
            end
            
        end
        
    end

end
