%-----------------------------------------------------------------------
% Job saved on 03-May-2016 19:53:13 by cfg_util (rev $Rev: 6460 $)
% spm SPM - SPM12 (6685)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------


spm('defaults','FMRI')

slist = dir('/home/ALDRECENTRUM/alexander.lebedev/Desktop/REBOOT_LONG_VBM');
slist = slist(3:numel(slist)) % subject list


matlabbatch{1}.spm.tools.cat.tools.long.subj.mov = {
                                                    '/home/ALDRECENTRUM/alexander.lebedev/Desktop/REBOOT_LONG_VBM/1013/preT1.nii,1'
                                                    '/home/ALDRECENTRUM/alexander.lebedev/Desktop/REBOOT_LONG_VBM/1013/postT1.nii,1'
                                                    };
matlabbatch{1}.spm.tools.cat.tools.long.opts.tpm = {'/home/ALDRECENTRUM/alexander.lebedev/Desktop/tbx/spm12/tpm/TPM.nii'};
matlabbatch{1}.spm.tools.cat.tools.long.opts.affreg = 'mni';
matlabbatch{1}.spm.tools.cat.tools.long.extopts.APP = 1;
matlabbatch{1}.spm.tools.cat.tools.long.extopts.LASstr = 0.5;
matlabbatch{1}.spm.tools.cat.tools.long.extopts.gcutstr = 0.5;
matlabbatch{1}.spm.tools.cat.tools.long.extopts.cleanupstr = 0.5;
matlabbatch{1}.spm.tools.cat.tools.long.extopts.darteltpm = {'/home/ALDRECENTRUM/alexander.lebedev/Desktop/tbx/spm12/toolbox/cat12/templates_1.50mm/Template_1_IXI555_MNI152.nii'};
matlabbatch{1}.spm.tools.cat.tools.long.extopts.vox = 1.5;
matlabbatch{1}.spm.tools.cat.tools.long.output.surface = 1;
matlabbatch{1}.spm.tools.cat.tools.long.modulate = 1;
