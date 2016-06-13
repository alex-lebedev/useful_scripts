%-----------------------------------------------------------------------
% Job saved on 13-Jun-2016 10:55:29 by cfg_util (rev $Rev: 6460 $)
% spm SPM - SPM12 (6470)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
% Author: A.V. Lebedev (Aging Research Center)
% Date: 2016-02-08
% Environment: MATLAB R2012b

slist = dir('/Volumes/REBOOT-I/REBOOT_BLdpabi/spm/reason');
slist = slist(3:numel(slist)); % subject list

spm('defaults','FMRI')

for i = 1:size(slist,1)
    matlabbatch{i}.spm.tools.variability.modeltype = 'boxcar';
    matlabbatch{i}.spm.tools.variability.modelmat = {strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/var/reas/',slist(i,1).name,'/SPM.mat')};
    matlabbatch{i}.spm.tools.variability.metric = 'sd';
    matlabbatch{i}.spm.tools.variability.resultprefix = 'sd';
    matlabbatch{i}.spm.tools.variability.resultdir = {strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/var/reas/',slist(i,1).name)};
    matlabbatch{i}.spm.tools.variability.modeltype = 'boxcar';
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% To start processing in a loop write this: %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%nrun = 1; % enter the number of runs here
%jobfile = {'/Volumes/REBOOT-I/REBOOT_BLdpabi/var/tpls/PJ_REBOOT1_VarTbx_job.m'};
%jobs = repmat(jobfile, 1, nrun);
%inputs = cell(0, nrun);
%for crun = 1:nrun
%end
%spm('defaults', 'FMRI');
%spm_jobman('run', jobs, inputs{:});
