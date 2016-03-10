%-----------------------------------------------------------------------
% Job saved on 07-Mar-2016 15:54:22 by cfg_util (rev $Rev: 6460 $)
% spm SPM - SPM12 (6685)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
slist = dir('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/');
slist = slist(3:numel(slist)) % subject list

spm('defaults','FMRI')

for i = 1:size(slist,1)
        matlabbatch{1}.spm.stats.fmri_spec.dir = {strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/COGITO_firstlevel/',slist(i,1).name)};
        matlabbatch{1}.spm.stats.fmri_spec.timing.units = 'secs';
        matlabbatch{1}.spm.stats.fmri_spec.timing.RT = 2;
        matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t = 32;
        matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t0 = 32;
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).scans = {
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0004.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0005.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0006.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0007.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0008.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0009.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0010.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0011.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0012.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0013.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0014.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0015.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0016.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0017.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0018.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0019.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0020.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0021.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0022.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0023.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0024.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0025.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0026.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0027.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0028.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0029.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0030.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0031.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0032.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0033.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0034.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0035.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0036.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0037.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0038.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0039.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0040.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0041.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0042.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0043.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0044.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0045.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0046.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0047.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0048.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0049.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0050.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0051.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0052.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0053.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0054.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0055.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0056.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0057.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0058.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0059.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0060.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0061.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0062.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0063.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0064.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0065.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0066.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0067.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0068.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0069.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0070.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0071.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0072.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0073.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0074.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0075.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0076.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0077.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0078.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0079.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0080.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0081.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0082.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0083.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0084.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0085.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0086.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0087.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0088.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0089.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0090.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0091.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0092.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0093.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0094.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0095.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0096.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0097.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0098.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0099.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0100.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0101.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0102.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0103.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0104.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0105.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0106.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0107.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0108.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0109.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0110.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0111.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0112.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0113.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0114.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0115.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0116.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0117.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0118.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0119.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0120.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0121.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0122.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0123.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0124.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0125.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0126.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0127.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0128.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0129.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0130.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0131.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0132.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0133.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0134.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0135.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0136.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0137.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0138.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0139.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0140.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0141.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0142.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0143.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0144.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0145.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0146.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session1/swraf0147.img,1')
                                                            };
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).name = 'numerical';
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).onset = [83.9 158.2];
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).duration = 53.5;
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).tmod = 0;
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).orth = 1;
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).name = 'verbal';
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).onset = [9.5 232.6];
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).duration = 53.5;
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).tmod = 0;
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).orth = 1;
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).name = 'fixation';
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).onset = [63
                                                                    137.4
                                                                    211.7];
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).duration = [20.9
                                                                       20.8
                                                                       20.9];
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).tmod = 0;
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).orth = 1;
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).multi = {''};
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).regress = struct('name', {}, 'val', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).multi_reg = {''};
        matlabbatch{1}.spm.stats.fmri_spec.sess(1).hpf = 128;
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).scans = {
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0004.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0005.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0006.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0007.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0008.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0009.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0010.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0011.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0012.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0013.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0014.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0015.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0016.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0017.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0018.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0019.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0020.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0021.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0022.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0023.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0024.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0025.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0026.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0027.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0028.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0029.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0030.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0031.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0032.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0033.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0034.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0035.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0036.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0037.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0038.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0039.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0040.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0041.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0042.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0043.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0044.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0045.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0046.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0047.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0048.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0049.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0050.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0051.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0052.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0053.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0054.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0055.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0056.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0057.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0058.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0059.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0060.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0061.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0062.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0063.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0064.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0065.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0066.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0067.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0068.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0069.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0070.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0071.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0072.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0073.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0074.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0075.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0076.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0077.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0078.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0079.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0080.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0081.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0082.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0083.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0084.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0085.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0086.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0087.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0088.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0089.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0090.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0091.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0092.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0093.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0094.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0095.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0096.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0097.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0098.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0099.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0100.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0101.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0102.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0103.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0104.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0105.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0106.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0107.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0108.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0109.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0110.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0111.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0112.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0113.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0114.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0115.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0116.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0117.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0118.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0119.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0120.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0121.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0122.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0123.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0124.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0125.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0126.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0127.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0128.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0129.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0130.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0131.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0132.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0133.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0134.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0135.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0136.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0137.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0138.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0139.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0140.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0141.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0142.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0143.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0144.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0145.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0146.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session2/swraf0147.img,1')
                                                            };
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).name = 'numerical';
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).onset = [83.9 158.2];
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).duration = 53.5;
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).tmod = 0;
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).orth = 1;
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).name = 'verbal';
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).onset = [9.5 232.6];
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).duration = 53.3;
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).tmod = 0;
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).orth = 1;
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).name = 'fixation';
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).onset = [63
                                                                    137.4
                                                                    211.7];
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).duration = [20.9
                                                                       20.8
                                                                       20.9];
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).tmod = 0;
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).orth = 1;
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).multi = {''};
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).regress = struct('name', {}, 'val', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).multi_reg = {''};
        matlabbatch{1}.spm.stats.fmri_spec.sess(2).hpf = 128;
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).scans = {
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0004.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0005.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0006.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0007.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0008.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0009.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0010.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0011.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0012.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0013.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0014.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0015.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0016.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0017.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0018.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0019.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0020.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0021.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0022.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0023.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0024.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0025.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0026.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0027.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0028.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0029.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0030.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0031.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0032.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0033.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0034.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0035.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0036.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0037.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0038.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0039.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0040.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0041.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0042.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0043.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0044.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0045.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0046.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0047.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0048.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0049.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0050.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0051.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0052.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0053.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0054.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0055.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0056.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0057.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0058.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0059.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0060.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0061.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0062.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0063.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0064.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0065.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0066.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0067.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0068.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0069.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0070.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0071.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0072.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0073.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0074.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0075.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0076.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0077.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0078.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0079.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0080.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0081.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0082.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0083.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0084.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0085.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0086.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0087.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0088.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0089.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0090.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0091.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0092.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0093.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0094.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0095.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0096.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0097.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0098.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0099.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0100.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0101.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0102.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0103.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0104.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0105.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0106.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0107.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0108.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0109.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0110.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0111.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0112.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0113.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0114.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0115.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0116.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0117.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0118.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0119.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0120.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0121.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0122.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0123.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0124.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0125.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0126.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0127.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0128.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0129.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0130.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0131.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0132.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0133.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0134.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0135.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0136.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0137.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0138.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0139.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0140.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0141.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0142.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0143.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0144.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0145.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0146.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session3/swraf0147.img,1')
                                                            };
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).name = 'numerical';
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).onset = [83.9 232.6];
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).duration = 53.5;
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).tmod = 0;
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).orth = 1;
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).name = 'verbal';
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).onset = [9.5 158.3];
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).duration = 53.3;
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).tmod = 0;
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).orth = 1;
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).name = 'fixation';
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).onset = [63
                                                                    137.4
                                                                    211.8];
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).duration = [20.9
                                                                       20.9
                                                                       20.8];
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).tmod = 0;
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).orth = 1;
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).multi = {''};
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).regress = struct('name', {}, 'val', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).multi_reg = {''};
        matlabbatch{1}.spm.stats.fmri_spec.sess(3).hpf = 128;
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).scans = {
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0004.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0005.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0006.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0007.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0008.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0009.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0010.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0011.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0012.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0013.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0014.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0015.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0016.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0017.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0018.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0019.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0020.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0021.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0022.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0023.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0024.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0025.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0026.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0027.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0028.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0029.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0030.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0031.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0032.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0033.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0034.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0035.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0036.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0037.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0038.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0039.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0040.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0041.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0042.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0043.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0044.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0045.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0046.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0047.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0048.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0049.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0050.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0051.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0052.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0053.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0054.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0055.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0056.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0057.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0058.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0059.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0060.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0061.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0062.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0063.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0064.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0065.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0066.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0067.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0068.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0069.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0070.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0071.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0072.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0073.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0074.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0075.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0076.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0077.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0078.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0079.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0080.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0081.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0082.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0083.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0084.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0085.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0086.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0087.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0088.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0089.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0090.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0091.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0092.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0093.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0094.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0095.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0096.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0097.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0098.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0099.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0100.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0101.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0102.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0103.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0104.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0105.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0106.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0107.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0108.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0109.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0110.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0111.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0112.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0113.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0114.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0115.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0116.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0117.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0118.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0119.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0120.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0121.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0122.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0123.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0124.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0125.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0126.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0127.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0128.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0129.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0130.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0131.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0132.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0133.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0134.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0135.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0136.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0137.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0138.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0139.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0140.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0141.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0142.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0143.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0144.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0145.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0146.img,1')
                                                            strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/rCOGITO/',slist(i,1).name, '/session4/swraf0147.img,1')

                                                            };
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).name = 'numerical';
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).onset = [9.5 158.2];
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).duration = 53.5;
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).tmod = 0;
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).orth = 1;
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).name = 'verbal';
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).onset = [83.9 232.6];
        %%
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).duration = 53.3;
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).tmod = 0;
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).orth = 1;
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).name = 'fixation';
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).onset = [63
                                                                    137.4
                                                                    211.7];
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).duration = [20.9
                                                                       20.8
                                                                       20.9];
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).tmod = 0;
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).orth = 1;
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).multi = {''};
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).regress = struct('name', {}, 'val', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).multi_reg = {''};
        matlabbatch{1}.spm.stats.fmri_spec.sess(4).hpf = 128;
        %%
        matlabbatch{1}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
        matlabbatch{1}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
        matlabbatch{1}.spm.stats.fmri_spec.volt = 1;
        matlabbatch{1}.spm.stats.fmri_spec.global = 'None';
        matlabbatch{1}.spm.stats.fmri_spec.mthresh = 0.8;
        matlabbatch{1}.spm.stats.fmri_spec.mask = {'/home/ALDRECENTRUM/jonna.nilsson/Desktop/Results_GroupICA/COGITOMask.img,1'};
        matlabbatch{1}.spm.stats.fmri_spec.cvi = 'AR(1)';
        % Running the batch for each subject: 
        spm_jobman('run',matlabbatch)
        matlabbatch{2}.spm.tools.variability.modeltype = 'boxcar';
        matlabbatch{2}.spm.tools.variability.modelmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
        matlabbatch{2}.spm.tools.variability.metric = 'sd';
        matlabbatch{2}.spm.tools.variability.resultprefix = 'sd';
        matlabbatch{2}.spm.tools.variability.resultdir = {strcat('/home/ALDRECENTRUM/jonna.nilsson/Desktop/COGITO_firstlevel/',slist(i,1).name)};

end

