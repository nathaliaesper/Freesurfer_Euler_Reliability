#!/bin/bash

export SUBJECTS_DIR=/home/nathalia/DATA/BRAINHACK
cd ${SUBJECTS_DIR}

# Run freesurfer until it creates the Euler number
recon-all -subjid ${SUBJECTS_DIR}/PROC.ANAT -i ${SUBJECTS_DIR}/ANAT/AMBAC001.ANAT.nii.gz -autorecon1 -gcareg -canorm -careg -rmneck -skull-lta -calabel -normalization2 -segmentation -fill -tessellate -openmp 4

# Command to run all the freesurfer preprocessing steps
recon-all -subjid ${SUBJECTS_DIR}/PROC.ANAT -i ${SUBJECTS_DIR}/ANAT/AMBAC001.ANAT.nii.gz -all

