#!tcsh
# Reorganize:
cd ~/Desktop

mkdir FS_rebootBL
mkdir FS_rebootBL/T1
mkdir FS_rebootBL/FLAIR


set xx = `ls REBOOT_converted_BL`

foreach i($xx)
mkdir FS_rebootBL/T1/$i
mkdir FS_rebootBL/FLAIR/$i
cp REBOOT_converted_BL/$i/T1/o*.nii FS_rebootBL/T1/$i/T1.nii
cp REBOOT_converted_BL/$i/flair/o*.nii FS_rebootBL/FLAIR/$i/flair.nii
end

####### RUN FREESUFER ######
# S 5221_20160131 - no FLAIR
# 4 processes:
# 1: 1-21
# 2: 22-42
# 3: 43-64
# 4: 65-86

tcsh
setenv SUBJECTS_DIR /home/ALDRECENTRUM/alexander.lebedev/Desktop/FS_rebootBL
cd $SUBJECTS_DIR

set subjs = `ls FLAIR`

foreach i($subjs[65-86])
recon-all -i T1/$i/T1.nii -FLAIR FLAIR/$i/flair.nii -s fs$i -FLAIRpial -3T -all
end
