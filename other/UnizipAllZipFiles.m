% Converts .rar to .zip folders
% Author: Anthony Garland

% Folder containing some .rar files that you want to conver to .zip files
targetDir = 'F:\ENGR2080\p3Unzipped - Copy';

% full filepath to 7z.exe 
app =  'C:\Program Files\7-Zip\7z.exe';

% ---------------------
% Main code.
% 1. Find all files in target
% 2. Check if it is a .rar file
% 3. If .rar, then
% 4. Use commandline to call 7z.exe and unzip the .rar to a folder with
% same name
% 5. Zip the folder that was created to make a .zip folder with the same
% name.
% --------------------

files = dir(targetDir); % get all files in the target directory
for i=1:length(files)
    %  files(i).name % Print the name
    [pathstr,name,ext] = fileparts( files(i).name);
    ext = lower(ext);  % convert file extension to lower case, just in case some makes a .Rar file
    
    try
    % if a .rar file, then unzip
    if(strcmp(ext,'.zip'))
        RarName = fullfile(targetDir,files(i).name ) ;
        unRarName = fullfile(targetDir, name);
        commandSyntax = sprintf('"%s" x "%s" -o"%s"',app, RarName,unRarName)
        
        % Run the unRar command, then run the zip command
        status = system(commandSyntax); % run the unrar command
        %zip(unRarName,unRarName);
    end  
    
    catch
         errorSyntax = sprintf(' Error encountered for %s',files(i).name)
    end
end
