tcsh

set flist = `ls DCM/*/*/*00000001*`
foreach i($flist)
dcm2nii  $i
end

rm */*/*00000001*
mkdir BIDS


set subjs = `ls -d DCM/*/V2/*`



# Start the loop:

foreach i ($subjs)

	# the two lines below cut the strings read by 'ls' to generate proper subject IDs from them:

	set snam = `echo $i | cut -d'/' -f4-`

	set snam = `echo $snam | cut -d'_' -f1`

  

	# Create BIDS folder structure for each subject

	# Visit 1

	mkdir NIFTI/sub-$snam



	mkdir NIFTI/sub-$snam/anat

	mkdir NIFTI/sub-$snam/func

	mkdir NIFTI/sub-$snam/dwi
