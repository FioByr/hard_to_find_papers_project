# Scripts

## How to use the (modified) Makita scripts

### Install ASReview (v1.2)

ASReview (v1.2) was used, in addition to a modfied version of ASReviews' Makita (v0.6.3) in the simulation study. To make sure these versions are both used in order to reproduce the simulation studies first install asreview 

````bash
pip install asreview==1.2
````

### Replace asreviewcontrib file

Then find the asreviewcontrib folder (can be found by going to "C:\Users\*\AppData\Local\Programs\Python\Python311\Lib\site-packages", depending on your version of Python installed), and then replace it with the modified asreviewcontrib folder.

### Run the simulations

### Create project folders 

Create a folder for arfi_simulation and multiple_models_simulation with a subfolder (data) containing the Radjenovic_2013_ndup_nnan.csv. 

### Type the following commands 

For the ARFI simulation, run the command: (replace Windows, with Linux or Darwin [MacOS] if running on a different platform)

````batch
asreview makita template arfi --init_seed 7 --model_seed 7 --platform Windows
````

For the multiple models simulation, run the command: (replace Windows, with Linux or Darwin [MacOS] if running on a different platform)

````batch
asreview makita template multiple_models --init_seed 7 --model_seed 7 --platform Windows
````

Alternatively, if you clone the project repository and run the jobs.bat files within the arfi_simulation and multiple_models_simulation, after having accessed and preprocessed the data (Radjenovic_2013_ndup_nnan.csv), the simulation will also run automatically and the output will be generated (if this output is deleted). 

## asreviewcontrib 

### ASReview Insights (Modified) Scripts 

#### metrics_updated_rank_order 

This script is a modified version of metric.py script from the ASReview Insights package, which extracts the rank-orders of the time to discovery (TD) values. This modification is not currently utilised in the actual insights package, but was added locally to
the insights package, in order to obtain these values. To reproduce these findings, this modified version of the metrics.py file would have to replace the actual one on local storage. 

### ASReview Makita (Modified) Scripts 

#### script_merge_tds (outdated)

This script was modified from the original script_merge_tds script on the ASReview Makita package. A table of the TD values with record IDs as rows and simulation runs as columns is output in each datasets simulation file. This modified script was then altered further by the developers of the Makita 
package, Jelle Teijama, (and therefore, was used for the purposes of this project, but is now outdated) when a pull request was made to merge this with the repository. The merged script now saves the TD 
tables outside of each datasets' simulation files in an overall TD folder. 

#### script_atd_calcualtions (outdated)

This script generated a .json field containing the average-record-TD values, average-simulation-TD, record-ATD and the simulation-ATD. A pull request was made and the script was adapted 
into the script_merge_tds script so that these values were incorporated into the TD tables instead of a seperate .json file (therefore, this script is outdated). This script was originally
intended to be used as a part of the project, but only a portion of it was used in the end (solely for the calculation of the average-record-TD values). 

#### script_merge_td_ranks

This script incorporates the basic template of the script_merge_tds script to generate a table of the rank-orders of the TD values, with each row corresponding to a particular records, and 
each column corresponding to each simulation run. This script is not included in the Makita package, and needs to be added locally. 

### template_arfi.txt / template_basic.txt / template_multiple_models.txt

These template files specify which scripts are to be run for the various templates of ASReviews' Makita workflow generator. These were modified so that script_atd_calculations.py and script_merge_td_ranks.py are added to the scripts to be run for each Makita template. 
