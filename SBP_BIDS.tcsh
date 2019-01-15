tcsh

set flist = `ls DCM/*/*/*00000001*`
foreach i($flist)
dcm2nii  $i
end

mkdir NIFTI


set subjs = `ls -d DCM/*/*`



# Start the loop:

foreach i ($subjs)

	# the two lines below cut the strings read by 'ls' to generate proper subject IDs from them:

	set snam = `echo $i | cut -d '/' -f2 | cut -d'_' -f1`	
	
	set snA = `echo ls DCM/$snam*/*/co*.nii.gz`
	set ans = `echo $snA[$#snA] | cut -d'/' -f3`
	set snF = `echo ls DCM/$snam*/*/*func.nii.gz`
	set funcs = `echo $snF[$#snF] | cut -d'/' -f3`
	set snD = `echo ls DCM/$snam*/*/*func.nii.gz`
	set diffs = `echo $snF[$#snD] | cut -d'/' -f3`

  

	# Create BIDS folder structure for each subject

	mkdir NIFTI/sub-$snam
	mkdir NIFTI/sub-$snam/anat
	mkdir NIFTI/sub-$snam/func
	mkdir NIFTI/sub-$snam/dwi
	

	# T1:
	mv DCM/$snam*/$snA/co*.nii.gz NIFTI/sub-$snam/anat/sub-$snam\_T1w.nii.gz
	
	# REST
	mv DCM/$snam*/snF/func.nii.gz NIFTI/sub-$snam/func/sub-$snam\_task-rest_bold.nii.gz	
	mv  DCM/$snam*/snA/func.json NIFTI/sub-$snam/func/sub-$snam\_task-rest_bold.json
	
	# DTI
	mv DCM/$snam*/$diffs/*.nii.gz NIFTI/sub-$snam/dwi/sub-$snam\_dwi.nii.gz
	mv DCM/$snam*/$diffs/*.bvec NIFTI/sub-$snam/dwi/sub-$snam\_dwi.bvec
	mv DCM/$snam*/$diffs/*.bval NIFTI/sub-$snam/dwi/sub-$snam\_dwi.bval

end


# End of the script
