%-----------------------------------------------------------------------
% Job saved on 11-Apr-2016 20:27:02 by cfg_util (rev $Rev: 6460 $)
% spm SPM - SPM12 (6470)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
% PJ_reboot1_ImgCalc.m
% Written by: Alexander Lebedev (Aging Research Center)
% Date: 2016-04-11

% ADD DESCRIPTION

clear all
mkdir /Volumes/REBOOT-I/REBOOT_BLdpabi/spm/maskedEucl/Yeo7_eucl
mkdir /Volumes/REBOOT-I/REBOOT_BLdpabi/spm/maskedEucl/Yeo7_eucl/nBack
mkdir /Volumes/REBOOT-I/REBOOT_BLdpabi/spm/maskedEucl/Yeo7_eucl/reason

slist = dir('/Volumes/REBOOT-I/REBOOT_BLdpabi/spm/nBack');
slist = slist(3:numel(slist)); % subject list
nwk = 'rYeo7_2';

spm('defaults','FMRI')


for i = 1:size(slist,1)
    
    %% N-BACK
    % con_0001:
    matlabbatch{1}.spm.util.imcalc.input = {
                                             strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/spm/nBack/', slist(i,1).name,'/con_0001.nii,1')
                                             strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/Yeo7_masks/', nwk, '.nii,1')
                                            };
    matlabbatch{1}.spm.util.imcalc.output = strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/spm/maskedEucl/Yeo7_eucl/nBack/', slist(i,1).name,'/', nwk,'_con0001.nii');
    matlabbatch{1}.spm.util.imcalc.outdir = {''};
    matlabbatch{1}.spm.util.imcalc.expression = 'i1.*(i2>0)';
    matlabbatch{1}.spm.util.imcalc.var = struct('name', {}, 'value', {});
    matlabbatch{1}.spm.util.imcalc.options.dmtx = 0;
    matlabbatch{1}.spm.util.imcalc.options.mask = 0;
    matlabbatch{1}.spm.util.imcalc.options.interp = 1;
    matlabbatch{1}.spm.util.imcalc.options.dtype = 4;
    
    % Creating a subject-specific folder: 
    mkdir(strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/spm/maskedEucl/Yeo7_eucl/nBack/', slist(i,1).name));
    % Running the batch for each subject: 
    spm_jobman('run',matlabbatch)
    
    
    % con_0002:
    matlabbatch{1}.spm.util.imcalc.input = {
                                             strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/spm/nBack/', slist(i,1).name,'/con_0002.nii,1')
                                             strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/Yeo7_masks/', nwk, '.nii,1')
                                            };
    matlabbatch{1}.spm.util.imcalc.output = strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/spm/maskedEucl/Yeo7_eucl/nBack/', slist(i,1).name,'/', nwk,'_con0002.nii');
    matlabbatch{1}.spm.util.imcalc.outdir = {''};
    matlabbatch{1}.spm.util.imcalc.expression = 'i1.*(i2>0)';
    matlabbatch{1}.spm.util.imcalc.var = struct('name', {}, 'value', {});
    matlabbatch{1}.spm.util.imcalc.options.dmtx = 0;
    matlabbatch{1}.spm.util.imcalc.options.mask = 0;
    matlabbatch{1}.spm.util.imcalc.options.interp = 1;
    matlabbatch{1}.spm.util.imcalc.options.dtype = 4;
    spm_jobman('run',matlabbatch)
    
    %% REASONING:
    % con_0001:
    matlabbatch{1}.spm.util.imcalc.input = {
                                             strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/spm/reason/', slist(i,1).name,'/con_0001.nii,1')
                                             strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/Yeo7_masks/', nwk, '.nii,1')
                                            };
    matlabbatch{1}.spm.util.imcalc.output = strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/spm/maskedEucl/Yeo7_eucl/reason/', slist(i,1).name,'/', nwk,'_con0001.nii');
    matlabbatch{1}.spm.util.imcalc.outdir = {''};
    matlabbatch{1}.spm.util.imcalc.expression = 'i1.*(i2>0)';
    matlabbatch{1}.spm.util.imcalc.var = struct('name', {}, 'value', {});
    matlabbatch{1}.spm.util.imcalc.options.dmtx = 0;
    matlabbatch{1}.spm.util.imcalc.options.mask = 0;
    matlabbatch{1}.spm.util.imcalc.options.interp = 1;
    matlabbatch{1}.spm.util.imcalc.options.dtype = 4;
    
    % Creating a subject-specific folder: 
    mkdir(strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/spm/maskedEucl/Yeo7_eucl/reason/', slist(i,1).name));
    % Running the batch for each subject: 
    spm_jobman('run',matlabbatch)
    
    
    % con_0002:
    matlabbatch{1}.spm.util.imcalc.input = {
                                             strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/spm/reason/', slist(i,1).name,'/con_0002.nii,1')
                                             strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/Yeo7_masks/', nwk, '.nii,1')
                                            };
    matlabbatch{1}.spm.util.imcalc.output = strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/spm/maskedEucl/Yeo7_eucl/reason/', slist(i,1).name,'/', nwk,'_con0002.nii');
    matlabbatch{1}.spm.util.imcalc.outdir = {''};
    matlabbatch{1}.spm.util.imcalc.expression = 'i1.*(i2>0)';
    matlabbatch{1}.spm.util.imcalc.var = struct('name', {}, 'value', {});
    matlabbatch{1}.spm.util.imcalc.options.dmtx = 0;
    matlabbatch{1}.spm.util.imcalc.options.mask = 0;
    matlabbatch{1}.spm.util.imcalc.options.interp = 1;
    matlabbatch{1}.spm.util.imcalc.options.dtype = 4;
    spm_jobman('run',matlabbatch)
end
