% Author: A.V. Lebedev (Aging Research Center)
% Date: 2016-06-13
% Environment: MATLAB R2012b

clear all
slist = dir('/Volumes/REBOOT-I/REBOOT_BLdpabi/var/nBack');
slist = slist(3:numel(slist)) % subject list

spm('defaults','FMRI')



spm('defaults','FMRI')

for i = 1:size(slist,1)

    % Proceed with model specification:
    matlabbatch{1}.spm.stats.fmri_spec.dir = {strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/var/nBack/',slist(i,1).name)};
    matlabbatch{1}.spm.stats.fmri_spec.timing.units = 'scans';
    matlabbatch{1}.spm.stats.fmri_spec.timing.RT = 2;
    matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t = 16;
    matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t0 = 8;

    matlabbatch{1}.spm.stats.fmri_spec.sess.scans = {
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,1')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,2')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,3')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,4')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,5')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,6')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,7')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,8')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,9')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,10')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,11')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,12')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,13')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,14')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,15')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,16')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,17')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,18')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,19')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,20')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,21')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,22')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,23')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,24')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,25')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,26')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,27')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,28')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,29')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,30')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,31')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,32')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,33')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,34')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,35')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,36')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,37')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,38')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,39')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,40')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,41')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,42')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,43')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,44')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,45')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,46')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,47')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,48')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,49')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,50')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,51')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,52')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,53')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,54')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,55')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,56')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,57')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,58')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,59')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,60')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,61')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,62')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,63')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,64')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,65')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,66')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,67')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,68')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,69')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,70')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,71')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,72')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,73')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,74')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,75')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,76')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,77')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,78')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,79')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,80')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,81')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,82')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,83')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,84')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,85')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,86')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,87')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,88')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,89')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,90')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,91')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,92')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,93')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,94')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,95')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,96')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,97')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,98')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,99')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,100')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,101')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,102')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,103')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,104')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,105')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,106')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,107')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,108')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,109')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,110')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,111')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,112')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,113')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,114')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,115')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,116')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,117')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,118')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,119')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,120')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,121')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,122')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,123')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,124')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,125')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,126')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,127')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,128')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,129')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,130')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,131')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,132')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,133')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,134')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,135')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,136')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,137')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,138')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,139')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,140')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,141')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,142')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,143')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,144')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,145')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,146')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,147')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,148')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,149')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,150')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,151')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,152')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,153')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,154')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,155')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,156')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,157')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,158')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,159')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,160')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,161')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,162')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,163')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,164')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,165')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,166')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,167')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,168')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,169')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,170')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,171')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,172')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,173')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,174')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,175')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,176')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,177')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,178')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,179')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,180')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,181')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,182')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,183')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,184')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,185')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,186')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,187')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,188')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,189')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,190')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,191')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,192')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,193')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,194')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,195')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,196')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,197')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,198')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,199')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,200')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,201')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,202')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,203')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,204')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,205')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,206')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,207')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,208')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,209')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,210')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,211')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,212')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,213')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,214')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,215')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,216')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,217')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,218')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,219')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,220')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,221')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,222')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,223')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,224')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,225')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,226')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,227')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,228')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,229')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,230')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,231')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,232')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,233')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,234')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,235')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,236')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,237')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,238')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,239')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,240')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,241')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,242')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,243')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,244')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,245')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,246')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,247')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,248')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,249')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,250')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,251')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,252')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,253')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,254')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,255')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,256')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,257')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,258')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,259')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,260')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,261')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,262')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,263')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,264')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,265')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,266')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,267')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,268')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,269')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,270')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,271')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,272')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,273')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,274')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,275')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,276')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,277')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,278')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,279')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,280')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,281')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,282')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,283')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,284')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,285')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,286')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,287')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,288')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,289')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,290')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,291')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,292')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,293')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,294')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,295')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,296')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,297')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,298')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,299')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,300')
                                                     };
    %%
    % Onsets/Duration for block "N1":
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(1).name = 'N1';
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(1).onset = [3
                                                             102
                                                             201];
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(1).duration = 30;
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(1).tmod = 0;
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(1).orth = 1;
    
    % Onsets/Duration for block "N2":
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(2).name = 'N2';
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(2).onset = [36
                                                             135
                                                             234];
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(2).duration = 30;
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(2).tmod = 0;
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(2).orth = 1;
    
    % Onsets/Duration for block "N3":
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(3).name = 'N3';
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(3).onset = [69
                                                             168
                                                             267];
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(3).duration = 30;
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(3).tmod = 0;
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(3).orth = 1;
    
    % Onsets/Duration for fixation dot:
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(4).name = 'fix';
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(4).onset = [0
                                                             33
                                                             66
                                                             99
                                                             132
                                                             165
                                                             198
                                                             231
                                                             264
                                                             297];
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(4).duration = 3;
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(4).tmod = 0;
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(4).orth = 1;
    matlabbatch{1}.spm.stats.fmri_spec.sess.multi = {''};
    matlabbatch{1}.spm.stats.fmri_spec.sess.regress = struct('name', {}, 'val', {});
    %matlabbatch{1}.spm.stats.fmri_spec.sess.multi_reg = {strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/covariates/RealignParameter/',slist(i,1).name,'/mot_nback.mat')};
    matlabbatch{1}.spm.stats.fmri_spec.sess.hpf = 190; % Setting larger high-pass filter due to long block duration
    matlabbatch{1}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
    matlabbatch{1}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
    matlabbatch{1}.spm.stats.fmri_spec.volt = 1;
    matlabbatch{1}.spm.stats.fmri_spec.global = 'None';
    matlabbatch{1}.spm.stats.fmri_spec.mthresh = 0.8;
    matlabbatch{1}.spm.stats.fmri_spec.mask = {''};
    matlabbatch{1}.spm.stats.fmri_spec.cvi = 'AR(1)';
    matlabbatch{2}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
    matlabbatch{2}.spm.stats.fmri_est.write_residuals = 0;
    matlabbatch{2}.spm.stats.fmri_est.method.Classical = 1;
    matlabbatch{3}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));

    % Specifying contrasts of interest:
    matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'n2>n1';
    matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = [-1 1];
    matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
    matlabbatch{3}.spm.stats.con.consess{2}.tcon.name = 'n3>n1';
    matlabbatch{3}.spm.stats.con.consess{2}.tcon.weights = [-1 0 1];
    matlabbatch{3}.spm.stats.con.consess{2}.tcon.sessrep = 'none';
    matlabbatch{3}.spm.stats.con.consess{3}.tcon.name = 'n3>n2';
    matlabbatch{3}.spm.stats.con.consess{3}.tcon.weights = [0 -1 1];
    matlabbatch{3}.spm.stats.con.consess{3}.tcon.sessrep = 'none';
    matlabbatch{3}.spm.stats.con.consess{4}.tcon.name = 'n1>BL';
    matlabbatch{3}.spm.stats.con.consess{4}.tcon.weights = [1 0 0 -1];
    matlabbatch{3}.spm.stats.con.consess{4}.tcon.sessrep = 'none';
    matlabbatch{3}.spm.stats.con.consess{5}.tcon.name = 'n2>BL';
    matlabbatch{3}.spm.stats.con.consess{5}.tcon.weights = [0 1 0 -1];
    matlabbatch{3}.spm.stats.con.consess{5}.tcon.sessrep = 'none';
    matlabbatch{3}.spm.stats.con.consess{6}.tcon.name = 'n3>BL';
    matlabbatch{3}.spm.stats.con.consess{6}.tcon.weights = [0 0 1 -1];
    matlabbatch{3}.spm.stats.con.consess{6}.tcon.sessrep = 'none';
    matlabbatch{3}.spm.stats.con.delete = 0;
  
    % Save the batch for each subject: 
    save(strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/var/nBack/',slist(i,1).name,'/SPM.mat'), 'matlabbatch')
end

%%%%%%%%%%%%%
% REASONING %
%%%%%%%%%%%%%

clear all

slist = dir('/Volumes/REBOOT-I/REBOOT_BLdpabi/var/reas');
slist = slist(3:numel(slist)) % subject list

spm('defaults','FMRI')

for i = 1:size(slist,1)
    % Proceed with model specification:
    matlabbatch{1}.spm.stats.fmri_spec.dir = {strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/var/reas/',slist(i,1).name)};
    matlabbatch{1}.spm.stats.fmri_spec.timing.units = 'scans';
    matlabbatch{1}.spm.stats.fmri_spec.timing.RT = 2;
    matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t = 16;
    matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t0 = 8;

    matlabbatch{1}.spm.stats.fmri_spec.sess.scans = {
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,1')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,2')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,3')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,4')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,5')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,6')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,7')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,8')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,9')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,10')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,11')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,12')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,13')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,14')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,15')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,16')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,17')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,18')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,19')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,20')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,21')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,22')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,23')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,24')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,25')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,26')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,27')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,28')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,29')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,30')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,31')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,32')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,33')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,34')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,35')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,36')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,37')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,38')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,39')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,40')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,41')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,42')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,43')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,44')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,45')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,46')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,47')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,48')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,49')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,50')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,51')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,52')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,53')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,54')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,55')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,56')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,57')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,58')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,59')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,60')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,61')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,62')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,63')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,64')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,65')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,66')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,67')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,68')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,69')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,70')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,71')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,72')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,73')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,74')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,75')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,76')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,77')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,78')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,79')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,80')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,81')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,82')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,83')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,84')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,85')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,86')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,87')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,88')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,89')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,90')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,91')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,92')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,93')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,94')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,95')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,96')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,97')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,98')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,99')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,100')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,101')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,102')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,103')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,104')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,105')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,106')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,107')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,108')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,109')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,110')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,111')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,112')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,113')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,114')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,115')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,116')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,117')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,118')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,119')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,120')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,121')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,122')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,123')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,124')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,125')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,126')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,127')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,128')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,129')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,130')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,131')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,132')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,133')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,134')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,135')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,136')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,137')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,138')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,139')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,140')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,141')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,142')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,143')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,144')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,145')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,146')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,147')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,148')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,149')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,150')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,151')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,152')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,153')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,154')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,155')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,156')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,157')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,158')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,159')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,160')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,161')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,162')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,163')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,164')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,165')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,166')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,167')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,168')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,169')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,170')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,171')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,172')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,173')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,174')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,175')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,176')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,177')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,178')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,179')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,180')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,181')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,182')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,183')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,184')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,185')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,186')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,187')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,188')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,189')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,190')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,191')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,192')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,193')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,194')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,195')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,196')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,197')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,198')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,199')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,200')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,201')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,202')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,203')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,204')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,205')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,206')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,207')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,208')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,209')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,210')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,211')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,212')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,213')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,214')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,215')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,216')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,217')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,218')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,219')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,220')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,221')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,222')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,223')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,224')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,225')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,226')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,227')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,228')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,229')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,230')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,231')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,232')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,233')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,234')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,235')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,236')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,237')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,238')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,239')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,240')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,241')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,242')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,243')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,244')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,245')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,246')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,247')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,248')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,249')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,250')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,251')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,252')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,253')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,254')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,255')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,256')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,257')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,258')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,259')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,260')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,261')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,262')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,263')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,264')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,265')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,266')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,267')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,268')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,269')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,270')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,271')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,272')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,273')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,274')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,275')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,276')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,277')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,278')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,279')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,280')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,281')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,282')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,283')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,284')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,285')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,286')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,287')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,288')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,289')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,290')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,291')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,292')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,293')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,294')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,295')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,296')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,297')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,298')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,299')
                                                     strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/S2_FunImgARCWSD/',slist(i,1).name, '/Detrend_4DVolume.nii,300')
                                                     };
    %%
    % Onsets/Duration for block "A":
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(1).name = 'A';
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(1).onset = [0
                                                             198
                                                             264];
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(1).duration = 30;
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(1).tmod = 0;
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(1).orth = 1;
    
    % Onsets/Duration for block "B":
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(2).name = 'B';
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(2).onset = [33
                                                             99
                                                             165];
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(2).duration = 30;
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(2).tmod = 0;
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(2).orth = 1;
    
    % Onsets/Duration for block "C":
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(3).name = 'C';
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(3).onset = [66
                                                             132
                                                             231];
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(3).duration = 30;
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(3).tmod = 0;
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(3).orth = 1;
    
    % Onsets/Duration for fixation dot:
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(4).name = 'fix';
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(4).onset = [30
                                                             63
                                                             96
                                                             129
                                                             162
                                                             195
                                                             228
                                                             261
                                                             294];
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(4).duration = 3;
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(4).tmod = 0;
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond(4).orth = 1;
    
    
    matlabbatch{1}.spm.stats.fmri_spec.sess.multi = {''};
    matlabbatch{1}.spm.stats.fmri_spec.sess.regress = struct('name', {}, 'val', {});
    %matlabbatch{1}.spm.stats.fmri_spec.sess.multi_reg = {strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/covariates/RealignParameter/',slist(i,1).name,'/mot_reason.mat')};
    matlabbatch{1}.spm.stats.fmri_spec.sess.hpf = 190; % Setting larger high-pass filter due to long block duration
    matlabbatch{1}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
    matlabbatch{1}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
    matlabbatch{1}.spm.stats.fmri_spec.volt = 1;
    matlabbatch{1}.spm.stats.fmri_spec.global = 'None';
    matlabbatch{1}.spm.stats.fmri_spec.mthresh = 0.8;
    matlabbatch{1}.spm.stats.fmri_spec.mask = {''};
    matlabbatch{1}.spm.stats.fmri_spec.cvi = 'AR(1)';
    matlabbatch{2}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
    matlabbatch{2}.spm.stats.fmri_est.write_residuals = 0;
    matlabbatch{2}.spm.stats.fmri_est.method.Classical = 1;
    matlabbatch{3}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
    
    % Specifying contrasts of interest:
    matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'B>A';
    matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = [-1 1];
    matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
    matlabbatch{3}.spm.stats.con.consess{2}.tcon.name = 'C>A';
    matlabbatch{3}.spm.stats.con.consess{2}.tcon.weights = [-1 0 1];
    matlabbatch{3}.spm.stats.con.consess{2}.tcon.sessrep = 'none';
    matlabbatch{3}.spm.stats.con.consess{3}.tcon.name = 'C>B';
    matlabbatch{3}.spm.stats.con.consess{3}.tcon.weights = [0 -1 1];
    matlabbatch{3}.spm.stats.con.consess{3}.tcon.sessrep = 'none';
    matlabbatch{3}.spm.stats.con.consess{4}.tcon.name = 'A>BL';
    matlabbatch{3}.spm.stats.con.consess{4}.tcon.weights = [1 0 0 -1];
    matlabbatch{3}.spm.stats.con.consess{4}.tcon.sessrep = 'none';
    matlabbatch{3}.spm.stats.con.consess{5}.tcon.name = 'B>BL';
    matlabbatch{3}.spm.stats.con.consess{5}.tcon.weights = [0 1 0 -1];
    matlabbatch{3}.spm.stats.con.consess{5}.tcon.sessrep = 'none';
    matlabbatch{3}.spm.stats.con.consess{6}.tcon.name = 'C>BL';
    matlabbatch{3}.spm.stats.con.consess{6}.tcon.weights = [0 0 1 -1];
    matlabbatch{3}.spm.stats.con.consess{6}.tcon.sessrep = 'none';
    matlabbatch{3}.spm.stats.con.delete = 0;
  
    % Save the batch for each subject: 
    save(strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/var/reas/',slist(i,1).name,'/SPM.mat'), 'matlabbatch')
end
