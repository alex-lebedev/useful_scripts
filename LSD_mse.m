% CALCULATE MULTISCALE ENTROPY (MSE) FOR PREPROCESSED IMAGES
% Example: LSD with 6 conditions

% Author: A.V. Lebedev (Aging Research Center)
% Date: 2016-02-08
% Environment: MATLAB R2012b

% FunImg    - PCB1
% S3_FunImg - PCB2
% S3_FunImg - PCB3
% S3_FunImg - LSD1
% S3_FunImg - LSD2
% S3_FunImg - LSD3

clear all
mdir = '/MY-PATH/LSD_spm12/';
mask_file = '/MY-PATH/LSD_spm12/Masks/AllResampled_BrainMask_05_91x109x91.nii';
subID = cellstr(['S01'; 'S02'; 'S03'; 'S04'; 'S05'; 'S06'; 'S07'; 'S09'; 'S10'; 'S11'; 'S12'; 'S13'; 'S14'; 'S15' ; 'S16'; 'S17'; 'S18'; 'S19'; 'S20']);

r = [0.3]; % specify tolerance criterion (r)
m = 2; % specify embedding dimension (m)
aval = [1 2 3 4 5]; % specify scales

state = cellstr(['PCB1'; 'PCB2'; 'PCB3';'LSD1'; 'LSD2'; 'LSD3']);

wdirs = cellstr(['S2_FunImgARCWDF/';'S2_FunImgARCWDF/';'S3_FunImgARCWDF/';'S4_FunImgARCWDF/';'S5_FunImgARCWDF/';'S6_FunImgARCWDF/']);
wdirs(1) = cellstr('FunImgARCWDF/');

for aa = 1:length(aval)
    a = aval(aa);
    for st = 1:length(state)
        mkdir(strcat('/MY-PATH/MSE_LSD/',state{st}));
        imgs = getAllFiles(strcat(mdir, wdirs{st}),'*.nii', 2);
        
        for i = 1:length(imgs)
            mkdir(strcat('/MY-PATH/MSE_LSD/',state{st},'/', subID{i}));
            imgStruct = load_nii(imgs{i});
            handles.img_4D = imgStruct.img;
            [p,f,e] = fileparts(imgs{i});
            handles.baseName = f;
            handles.imgVoxDim = imgStruct.hdr.dime.pixdim(2:4);        

            mask = load_nii(mask_file);
            mask = mask.img;

            brainVox = find(mask == max(mask(:)));
            imgSize = size(mask);
            sampEn = zeros(imgSize);
            opFolder = strcat('/MY-PATH/MSE_LSD/',state{st}, '/', subID{i});

            for i = 1:length(m)
                for j = 1:length(r)
                    msg = ['calculating MSE: m=',num2str(m(i)),',r=',num2str(r(j)), ',a=', num2str(a)];
                    h = waitbar(0,msg);
                    nFail = 0;
                    for vox = 1:length(brainVox)
                        [row,col,sl] = ind2sub(imgSize,brainVox(vox));
                        TS = squeeze(handles.img_4D(row,col,sl,:));
                        r_val = r(j)*std(double(TS));
                        tmp = sample_entropy(m(i),r_val,TS,a);
                        MSE(row,col,sl) = tmp(1);
                        nFail = nFail+tmp(2);
                        waitbar(vox/length(brainVox));
                    end
                    close(h)
                    opFname = [opFolder,filesep,handles.baseName,'MSE_m',...
                        num2str(m(i)),'_r',num2str(r(j)*100),'_a',num2str(a),'per','.nii'];
                    niiStruct = make_nii(MSE,handles.imgVoxDim,[],64,[]);
                    niiStruct.hdr.hk.data_type = 'float64';
                    save_nii(niiStruct,opFname,[]);
                end
            end
        end
    end
end     
