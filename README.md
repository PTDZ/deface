# deface
A simple script to deface (with use of fsl_deface) multiple T1/T2-weighetned files prepared according to the BIDS standard.

<div id="top"></div>

# deface

A simple script to deface (with use of fsl_deface) multiple T1/T2-weightened files prepared according to the BIDS standard.
Note: files will be overwritten with new versions, preserving the BIDS naming standard.

## Usage
Syntax: ./deface.sh [-o|-t]

```sh
./deface.sh
```
Options:
without an option 	--	 de-face both T1/T2-weightened images
-o 			--	 de-face only T1-weigtened images
-t 			-- 	 de-face only T2-weigtened images

## Additional information

-- Script uses standard fsl_deface function (without any options); change this line "fsl_deface $f $f" to add options if needed.
-- fsl_deface function can be downloaded with [fsl software](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki)
-- Data should be prepared in [BIDS format](https://bids.neuroimaging.io)
-- Script should be added to the main project directory (main dir with sub-01, sub-02 etc. directories)

<p align="right">(<a href="#top">back to top</a>)</p>
