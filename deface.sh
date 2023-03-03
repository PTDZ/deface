#!/bin/bash

# A simple script to deface (with use of fsl_deface) multiple T1/T2-weightened files prepared according to the BIDS standard.
# Note: files will be overwritten with new versions, preserving the BIDS naming standard.
#
# Syntax: ./deface.sh [-o|-t]
#
# Options:
# without an option 	--	 de-face both T1/T2-weightened images
# -o 			--	 de-face only T1-weigtened images
# -t 			-- 	 de-face only T2-weigtened images
#
# github.com/ptdz, 2023

while getopts "ot" option; do
	case $option in
		o) 
		  filetype="*T1w.nii.gz"
		  ;;
		t) 
		  filetype="*T2w.nii.gz"
		  ;;
		\?) #Invalid option
		   echo "Error: invalid option. Syntax: ./deface.sh [-o|-t]"
		  ;;
	esac
done

if [ -z "$1" ]
	then
	  filetype="*.nii.gz"
fi

filelist=$(find "$PWD" -name "$filetype")

for f in $filelist
do
	fsl_deface $f $f
	echo $f "file processed successfully"
done
