# The influence of active learning model and prior knowledge choice on how long it takes to find hard-to-find papers: Examining the variability of the time-to-discovery and the stability of its’ rank-orders

## Implementation into ASReview's Makita 

This repository also contains scripts which are either modified versions of already exisitng scripts from the asreview-makita and asreview-insights repositories, or new scripts which are created with the goal of being merged with these existing repositories. These scripts were created as part of the work of a master's thesis, and as well they also contribute to the open-source project of ASReview. 

script_merge_tds:
This script is an updated version of an already existing script in the asreview-makita repository. It generates a TD table in which each column is a simulation run and the rows are the record IDs of relevant records. A separate table is generated for each dataset. 

script_ATD_calculations: 
This script contains functions which take the tables outputed from the script_merge_tds script and calculate two different TD values: average-record-TD (which is the average of the TD values for a single record), and average-simualtion-TD (which is the average of the TD values across a simulation run). As well, it calculates two different ATD values: record-ATD (the average of the average-record-TD values), and simulation-ATD (the average of the average-simulation-TD values). These values are stored in a json file in each datasets metrics file.


