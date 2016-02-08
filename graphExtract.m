% The following script (1) constructs adjacency matrices
% from the fMRI ROI time-series (extracted using DPARSFAtoolbox) and
% (2) runs calculations of graph theoretical
% measures: nodal strength and modularity
% (using Brain Connectivity Toolbox, which has to be installed in advance)
% 
% <<< EXECUTE STEP-BY-STEP >>>
%
% Author: Alexander V. Lebedev
% Date: 06.08.2014


% 1. Generate *mat- files (adjacency matrices)
clear all
myFolder = '/Users/alebedev/Desktop/IMAGING/FC/dopa'; % set your folder name here
cd(myFolder)

if exist(myFolder, 'dir') ~= 7
  Message = sprintf('Error: The following folder does not exist:\n%s', myFolder);
  uiwait(warndlg(Message));
  return;
end

filePattern = fullfile(myFolder, '*.txt');
txtFiles   = dir(filePattern);

for k = 1:length(txtFiles)
  baseFileName = txtFiles(k).name;
  fprintf('Now reading %s\n', baseFileName);
  txtArray = textread(baseFileName);
  adjM = corrcoef(txtArray(:,1:116)); % construct adjacency matrix
  nam = strsplit(baseFileName,'.txt');
  filename2write = [ nam(k) '.mat' ];
  save(strjoin(filename2write, ''), 'adjM'); 
end



% 2. Calculate measures of interest
clear all
myFolder = '/Users/alebedev/Desktop/IMAGING/FC/dopa'; % set your folder name here
finalFilename = 'dopa'
cd(myFolder)
filePattern = fullfile(myFolder, '*.mat');
matFiles   = dir(filePattern);

for k = 1:length(matFiles)
    baseFileName = matFiles(k).name;
    load(baseFileName);
    % Adjacency matrix:
    M(k,:,:) = adjM;
    % NODAL STRENGTH for undirected weighted graph (both + and -):
    % Spos/Sneg - nodal strength of positive/negative weights
    % vpos/vneg - total positive/negative weight
    [Spos(k,:) Sneg(k,:) vpos(k) vneg(k)] = strengths_und_sign(adjM);
    
    % MODULARITY [Q*] for unweighted graphs (takes both + and -):
    % Ci - community affiliation vector
    % Q - modularity (qtype dependent)
    [Ci(k,:) Q(k)] = modularity_louvain_und_sign(adjM);    
end
    
    
    
save(finalFilename, 'M', 'Spos', 'Sneg', 'vpos', 'vneg', 'Ci', 'Q'); 

% REFERENCES:

% BCT: https://sites.google.com/site/bctnet/
% DPARSFA: http://rfmri.org/DPARSF
