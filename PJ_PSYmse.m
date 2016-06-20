%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% CALCULATE MULTISCALE ENTROPY (MSE) FOR PREPROCESSED IMAGES %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% EXAMPLE:
% Jordi Riba's Ayahuasca dataset 
% with two fMRI scans (pre- and post- AYA session)
% Sample: 16 subjects

% The script calculates sample entropy at scales [1:5]
% and saves each map separately
% Images are normalized, detrended and filtered at [0.008<Hz<0.1]
% FunImg    - Visit 1
% S2_FunImg - Visit 2

% Author: A.V. Lebedev (Aging Research Center)
% Date: 2016-06-20
% Environment: MATLAB R2012b

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
cd /Volumes/REBOOT-I/
mkdir /Volumes/REBOOT-I/MSE_AYA/

mdir = '/Volumes/REBOOT-I/AYAdat/';
mask_file = '/Volumes/REBOOT-I/AYAdat/Masks/AllResampled_BrainMask_05_91x109x91.nii';
subID = cellstr(['V01'; 'V02'; 'V03'; 'V04'; 'V05'; 'V06'; 'V07';'V08'; 'V09'; 'V10'; 'V11'; 'V12'; 'V13'; 'V14'; 'V15' ; 'V16']);

r = [0.3];
m = 2;
aval = [1:5];

state = cellstr(['VIS1'; 'VIS2']);

wdirs = cellstr(['S1_FunImgARCWDF/';'S2_FunImgARCWDF/']);
wdirs(1) = cellstr('FunImgARCWDF/');

for aa = 1:length(aval)
    a = aval(aa);
    for st = 1:length(state)
        mkdir(strcat('/Volumes/REBOOT-I/MSE_AYA/',state{st}));
        imgs = getAllFiles(strcat(mdir, wdirs{st}),'*.nii', 2);
        
        for i = 1:length(imgs)
            mkdir(strcat('/Volumes/REBOOT-I/MSE_AYA/',state{st},'/', subID{i}));
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
            opFolder = strcat('/Volumes/REBOOT-I/MSE_AYA/',state{st}, '/', subID{i});
 
            msg = ['calculating MSE: m=',num2str(m),',r=',num2str(r), ',a=', num2str(a)];
            h = waitbar(0,msg);
            nFail = 0;
            for vox = 1:length(brainVox)
                [row,col,sl] = ind2sub(imgSize,brainVox(vox));
                TS = squeeze(handles.img_4D(row,col,sl,:));
                r_val = r*std(double(TS));
                tmp = sample_entropy(m,r_val,TS,a);
                MSE(row,col,sl) = tmp(1);
                nFail = nFail+tmp(2);
                waitbar(vox/length(brainVox));
            end
            close(h)
            opFname = [opFolder,filesep,handles.baseName,'MSE_m',...
            num2str(m),'_r',num2str(r*100),'_a',num2str(a),'per','.nii'];
            niiStruct = make_nii(MSE,3,[31 43 25],64); % Make sure you set a proper [originX originY originZ]
            niiStruct.hdr.hk.data_type = 'float64';
            save_nii(niiStruct,opFname,[]);
        end
    end
end                

