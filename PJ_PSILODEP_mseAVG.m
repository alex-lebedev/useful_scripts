clear all
cd /Volumes/REBOOT-I/PSILODEP/MSE

mdir = '/Volumes/REBOOT-I/PSILODEP/MSE/';
subID = cellstr(['S01'; 'S02'; 'S03'; 'S04'; 'S05'; 'S07'; 'S08'; 'S09'; 'S10'; 'S13'; 'S14'; 'S15'; 'S16'; 'S18'; 'S19'; 'S20']);

state = cellstr(['VIS1r' ;'VIS1m';'VIS2r' ;'VIS2m']);

wdirs = cellstr(['S1_FunImg/';'S2_FunImg/'; 'S3_FunImg/'; 'S4_FunImg/']);
wdirs(1) = cellstr('FunImg/');


for st = 1:length(state)
        for i = 1:length(subID)
            spm('defaults', 'FMRI');
            cd(strcat('/Volumes/REBOOT-I/PSILODEP/MSE/', state{st},'/', subID{i}))
            
            matlabbatch{1}.spm.util.imcalc.input = {
                  ls(strcat('/Volumes/REBOOT-I/PSILODEP/MSE/', state{st},'/', subID{i}, '/*MSE_m1_r30_a1per.nii'))
                  ls(strcat('/Volumes/REBOOT-I/PSILODEP/MSE/', state{st},'/', subID{i}, '/*MSE_m1_r30_a2per.nii'))
                  ls(strcat('/Volumes/REBOOT-I/PSILODEP/MSE/', state{st},'/', subID{i}, '/*MSE_m1_r30_a3per.nii'))
                  ls(strcat('/Volumes/REBOOT-I/PSILODEP/MSE/', state{st},'/', subID{i}, '/*MSE_m1_r30_a4per.nii'))
                  ls(strcat('/Volumes/REBOOT-I/PSILODEP/MSE/', state{st},'/', subID{i}, '/*MSE_m1_r30_a5per.nii'))
                                        };
            matlabbatch{1}.spm.util.imcalc.output = 'mse';
            matlabbatch{1}.spm.util.imcalc.outdir = {''};
            matlabbatch{1}.spm.util.imcalc.expression = '(i1+i2+i3+i4+i5)/5';
            matlabbatch{1}.spm.util.imcalc.var = struct('name', {}, 'value', {});
            matlabbatch{1}.spm.util.imcalc.options.dmtx = 0;
            matlabbatch{1}.spm.util.imcalc.options.mask = 0;
            matlabbatch{1}.spm.util.imcalc.options.interp = 1;
            matlabbatch{1}.spm.util.imcalc.options.dtype = 4;
            spm_jobman('run',matlabbatch)
        end
end
