# Scripts

## How to use the modified Makita scripts

### Install Makita (v0.6.3)

Makita (v0.6.3) was used in the simulation study. The scripts that were modified were from this version.

````bash
pip install asreview-makita==0.6.3
````



## ASReview Insights Modified Scripts 

### metrics_updated_rank_order 

This script is a modified version of metric.py script from the ASReview Insights package. The _time_to_discovery function was modified so that for each relevant record in
the dataset the ranking of the TD is extracted. Before, only the record ID and TD value for each relevant record was extracted. This was done to obtain the rank-orders
of the TD values of the relevant records across different simulations. This modification is not currently utilised in the actual insights package, but was added locally to
the insights package, in order to obtain these values. To reproduce these findings, this modified version of the metrics.py file would have to replace the actual one on local 
storage. 

## ASReview Makita Modified Scripts 

### script_merge_tds (outdated)

This script was modified from the original script_merge_tds script on the ASReview Makita package. The create_table_state_tds fucntion was modified so that a TD table was produced
which has record IDs for each row, and each column corresponded to each simualation being run for a particular template. Furthermore, the _split_file_paths function was added which 
takes all the directory paths for the metrics files contained in a single project folder and splits it by the dataset, so that a TD table can be created per dataset. Additionally, this 
allowed the saving of each datasets TD table into the ouput of each datasets simulation in a tables folder. This modified script was then altered further by the developers of the Makita 
package (and therefore, was used for the purposes of this project, but is now outdated) when a pull request was made to merge this with the repository. The merged script now saves the TD 
tables outside of each datasets' simulation files in an overall TD folder. 

### script_ATD_calcualtions (outdated)

This script generated a .json field containing the average-record-TD values, average-simulation-TD, record-ATD and the simulation-ATD. A pull request was made and the script was adapted 
into the script_merge_tds script so that these values were incorporated into the TD tables instead of a seperate .json file (therefore, this script is outdated). This script was originally
intended to be used as a part of the project, but only a portion of it was used in the end (solely for the calculation of the average-record-TD values). 

### script_merge_td_ranks

This script incorporates the basic template of the script_merge_tds script to generate a table of the rank-orders of the TD values, with each row corresponding to a particular records, and 
each column corresponding to each simulation run. This script is not included in the Makita package, and needs to be added locally. 

## Data Preprocessing 

### data_propocessing 

This script removes the duplicates from the Radjenovic dataset, and the records with missing abstracts. 
