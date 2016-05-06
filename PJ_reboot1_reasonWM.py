# PJ_reboot1_reasonWM.py

# The script extracts a meta-analysis-based z-score  (keywords: "working memory", "wm") for a number of activation maps,
# which should be resliced in advance.
# Requires installation of neurosynth (https://github.com/neurosynth/neurosynth):
# (after unzipping):
# >>> pip install -r requirements.txt
# >>> pip install neurosynth

# Author: A.V. Lebedev (Aging Research Center)
# Date: 2016-05-06
# Environment: MATLAB R2012b

from neurosynth.base.dataset import Dataset
from neurosynth.analysis import decode

dataset = Dataset('data/database.txt')
dataset.add_features('data/features.txt')


decoder = decode.Decoder(dataset, features=['working memory', 'wm'])


result = decoder.decode(['vIns.nii.gz', 'dIns.nii.gz', 'pIns.nii.gz'], save='decoding_results.txt')

result = decoder.decode([
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1013_20150520/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1013_20150520/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1026_20150521/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1026_20150521/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1039_20150524/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1039_20150524/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1065_20150522/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1065_20150522/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1078_20150519/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1078_20150519/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1091_20150522/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1091_20150522/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1104_20150519/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1104_20150519/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1130_20150524/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1130_20150524/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1143_20150520/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1143_20150520/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1169_20150519/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1169_20150519/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1182_20150519/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1182_20150519/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1195_20150519/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1195_20150519/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1221_20151108/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1221_20151108/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1234_20150524/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1234_20150524/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1247_20150522/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1247_20150522/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1260_20150521/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/1260_20150521/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/2013_20150713/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/2013_20150713/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/2026_20150715/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/2026_20150715/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/2039_20150713/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/2039_20150713/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/2052_20150714/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/2052_20150714/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/2078_20150715/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/2078_20150715/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/2091_20150714/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/2091_20150714/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/2117_20150714/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/2117_20150714/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/2130_20150715/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/2130_20150715/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/2169_20150717/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/2169_20150717/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3013_20150908/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3013_20150908/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3052_20150911/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3052_20150911/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3065_20150908/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3065_20150908/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3091_20150908/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3091_20150908/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3117_20150908/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3117_20150908/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3130_20150908/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3130_20150908/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3143_20150908/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3143_20150908/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3169_20150908/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3169_20150908/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3182_20150907/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3182_20150907/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3195_20150910/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3195_20150910/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3208_20150913/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3208_20150913/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3234_20150913/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3234_20150913/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3247_20150909/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3247_20150909/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3260_20150908/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3260_20150908/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3273_20150907/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3273_20150907/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3312_20150907/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3312_20150907/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3325_20150909/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3325_20150909/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3338_20150907/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3338_20150907/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3364_20150907/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3364_20150907/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3377_20150910/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3377_20150910/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3481_20150907/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/3481_20150907/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4013_20151108/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4013_20151108/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4026_20151103/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4026_20151103/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4039_20151103/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4039_20151103/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4052_20151104/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4052_20151104/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4117_20160130/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4117_20160130/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4130_20151108/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4130_20151108/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4143_20151105/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4143_20151105/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4156_20151106/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4156_20151106/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4208_20151105/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4208_20151105/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4234_20151105/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4234_20151105/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4260_20151104/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4260_20151104/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4273_20151106/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4273_20151106/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4325_20151107/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4325_20151107/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4338_20151107/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4338_20151107/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4364_20151107/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4364_20151107/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4377_20151108/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4377_20151108/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4390_20151103/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4390_20151103/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4403_20151104/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4403_20151104/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4442_20151104/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4442_20151104/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4455_20151107/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4455_20151107/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4520_20151106/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4520_20151106/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4559_20151107/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4559_20151107/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4585_20151106/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4585_20151106/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4598_20151108/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/4598_20151108/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5013_20160126/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5013_20160126/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5039_20160126/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5039_20160126/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5065_20160131/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5065_20160131/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5130_20160128/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5130_20160128/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5169_20160130/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5169_20160130/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5182_20160125/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5182_20160125/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5208_20160125/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5208_20160125/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5234_20160130/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5234_20160130/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5273_20160131/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5273_20160131/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5312_20160125/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5312_20160125/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5338_20160128/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5338_20160128/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5377_20160127/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5377_20160127/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5403_20160131/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5403_20160131/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5416_20160127/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5416_20160127/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5429_20160131/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5429_20160131/rspmT_0002.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5442_20160127/rspmT_0001.nii', 
    '/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/5442_20160127/rspmT_0002.nii'],
save='/Volumes/REBOOT-I/REBOOT_BLdpabi/reasNeurosynth/decoding_results.txt')
