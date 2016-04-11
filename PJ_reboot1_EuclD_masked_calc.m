
% PJ_reboot1_EuclD_masked_calc.m
% Written by: Alexander Lebedev (Aging Research Center)
% Date: 2016-04-11
% The script calculates Euclidean distance between fMRI activation maps estimated with *estimate_motcorr.m scripts

clear all

nwk = 'rYeo7_2';

slist = dir('/Volumes/REBOOT-I/REBOOT_BLdpabi/spm/reason');
slist = slist(3:numel(slist));

for i = 1:size(slist,1)
    
        img_nb2 = load_nii(strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/spm/maskedEucl/Yeo7_eucl/nBack/', slist(i,1).name,'/', nwk,'_con0001.nii'));
        img_nb3 = load_nii(strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/spm/maskedEucl/Yeo7_eucl/nBack/', slist(i,1).name,'/', nwk,'_con0002.nii'));
        img_rB = load_nii(strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/spm/maskedEucl/Yeo7_eucl/reason/', slist(i,1).name,'/', nwk,'_con0001.nii'));
        img_rC = load_nii(strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/spm/maskedEucl/Yeo7_eucl/reason/', slist(i,1).name,'/', nwk,'_con0002.nii'));
        [x, y, z] = size(img_nb2.img);

        nb2 = reshape(double(img_nb2.img), x, y*z);
        nb3 = reshape(double(img_nb3.img), x, y*z);
        rB = reshape(double(img_rB.img), x, y*z);
        rC = reshape(double(img_rC.img), x, y*z);

        nb2(isnan(nb2))=0;
        nb3(isnan(nb3))=0;
        rB(isnan(rB))=0;
        rC(isnan(rC))=0;

        D(i,1) = norm(nb2-nb3);
        D(i,2) = norm(nb2-rB);
        D(i,3) = norm(nb2-rC);
        D(i,4) = norm(nb3-rB);
        D(i,5) = norm(nb3-rC);
        D(i,6) = norm(rB-rC);
end

save(strcat('/Volumes/REBOOT-I/REBOOT_BLdpabi/spm/maskedEucl/EuclMaskedResults/',nwk, '_Eucl_D.mat'), 'D')
