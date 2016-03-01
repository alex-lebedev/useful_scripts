### Miscellaneous scripts for data analysis
___

**extractGraph.m** <br /> 
_Constructs adjacency matrices from the fMRI ROI time-series (extracted using [`DPARSFA`](http://rfmri.org/DPARSF/) toolbox)
and_ <br />
_runs calculations of graph theoretical measures: nodal strength and modularity (using [`Brain Connectivity Toolbox`](https://sites.google.com/site/bctnet/))_

**MSE_LSD.m** <br />
_Calculates Multiscale Entropy (MSE) for preprocessed images. Uses  LOFT's [`complexity`](http://loft-lab.org/index-5-2.html) toolbox_ <br />



**PJ - Project-specific scripts:**
<br />
PJ_rebootI_freesurferBL.tcsh - _REBOOT-I: Cross-sectional preprocessing of the baseline structural scans in Freesurfer (v5.3.0)_
<br />
PJ_reboot1_nBack_estimate.m - _SPM12 Batch for Design/Contrast specification and estimation batch for "N-back" task from REBOOT-I_
<br />
PJ_reboot1_reason_estimate.m - _SPM12 Batch for Design/Contrast specification and estimation batch for "Reasoning" task from REBOOT-I_
