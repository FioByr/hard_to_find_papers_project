# Scripts

## How to use the (modified) Makita scripts

### Install ASReviews' Makita (v0.6.3)

ASReviews' Makita (v0.6.3) was used in the simulation study. The scripts that were modified were from this version. To install this use the following command. 

````bash
pip install asreview-makita==0.6.3
````

## ASReview Insights (Modified) Scripts 

### metrics_updated_rank_order 

This script is a modified version of metric.py script from the ASReview Insights package, which extracts the rank-orders of the time to discovery (TD) values. This modification is not currently utilised in the actual insights package, but was added locally to
the insights package, in order to obtain these values. To reproduce these findings, this modified version of the metrics.py file would have to replace the actual one on local storage. 

## ASReview Makita (Modified) Scripts 

### script_merge_tds (outdated)

This script was modified from the original script_merge_tds script on the ASReview Makita package. A table of the TD values with record IDs as rows and simulation runs as columns is output in each datasets simulation file. This modified script was then altered further by the developers of the Makita 
package, Jelle Teijama, (and therefore, was used for the purposes of this project, but is now outdated) when a pull request was made to merge this with the repository. The merged script now saves the TD 
tables outside of each datasets' simulation files in an overall TD folder. 

### script_ATD_calcualtions (outdated)

This script generated a .json field containing the average-record-TD values, average-simulation-TD, record-ATD and the simulation-ATD. A pull request was made and the script was adapted 
into the script_merge_tds script so that these values were incorporated into the TD tables instead of a seperate .json file (therefore, this script is outdated). This script was originally
intended to be used as a part of the project, but only a portion of it was used in the end (solely for the calculation of the average-record-TD values). 

### script_merge_td_ranks

This script incorporates the basic template of the script_merge_tds script to generate a table of the rank-orders of the TD values, with each row corresponding to a particular records, and 
each column corresponding to each simulation run. This script is not included in the Makita package, and needs to be added locally. 
