% Calculate multi-scale sample entropy for ICL PSILODEP data
% Author: Alexander V. Lebedev
% Date: 2016-12-08

clear all
cd /home/ALDRECENTRUM/alexander.lebedev/Desktop/PSILODEP/
mkdir MSE

mdir = '/home/ALDRECENTRUM/alexander.lebedev/Desktop/PSILODEP/';
mask_file = '/home/ALDRECENTRUM/alexander.lebedev/Desktop/PSILODEP/Masks/AllResampled_BrainMask_05_91x109x91.nii';
subID = cellstr(['S01'; 'S02'; 'S03'; 'S04'; 'S05'; 'S07'; 'S08'; 'S09'; 'S10'; 'S13'; 'S14'; 'S15'; 'S16'; 'S18'; 'S19'; 'S20']);

state = cellstr(['VIS1r' ;'VIS1m';'VIS2r' ;'VIS2m']);

wdirs = cellstr(['S1_FunImg/';'S2_FunImg/'; 'S3_FunImg/'; 'S4_FunImg/']);
wdirs(1) = cellstr('FunImg/');


r = [0.3];
m = 1;
aval = [1:5];

for aa = 1:length(aval)
    a = aval(aa);
    for st = 1:length(state)
        mkdir(strcat('/home/ALDRECENTRUM/alexander.lebedev/Desktop/PSILODEP/MSE/',state{st}));
        imgs = getAllFiles(strcat(mdir, wdirs{st}),'*.nii', 2);
        
        for i = 1:length(imgs)
            mkdir(strcat('/home/ALDRECENTRUM/alexander.lebedev/Desktop/PSILODEP/MSE/',state{st},'/', subID{i}));
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
            opFolder = strcat('/home/ALDRECENTRUM/alexander.lebedev/Desktop/PSILODEP/MSE/',state{st}, '/', subID{i});
 
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
            niiStruct = make_nii(MSE,2,[46 64 37],64);
            niiStruct.hdr.hk.data_type = 'float64';
            save_nii(niiStruct,opFname,[]);
        end
    end
end                
