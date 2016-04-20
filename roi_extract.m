clear all
myFolder = '/Volumes/REBOOT-I/REBOOT1bioSEM/tmaps/nb2'; % set your folder name here

cd(myFolder)
filePattern = fullfile(myFolder, '*.mat');
matFiles   = dir(filePattern);

for k = 1:length(matFiles)
    baseFileName = matFiles(k).name;
    load(baseFileName);
    % Adjacency matrix:
    nb2(k,:) = ROISignals;
end
