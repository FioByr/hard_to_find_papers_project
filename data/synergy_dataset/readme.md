# Data 

## Synergy Dataset
The data used in the current project was the Radjenovic dataset (Radjenović et al., 2013) which was taken from the SYNERGY dataset (De Bruin et al., 2023). The SYNERGY
dataset can be donwloaded by first installing the synergy-dataset Python package 

'''python
pip intall synergy-dataset
'''

) and then running the command (python -m
synergy_dataset get) in the command line. Alternatively, .zip of the dataset can be downloaded at https://dataverse.nl/dataset.xhtml?persistentId=doi:10.34894/HE6NAQ

## Preprocessing 
There were 14 duplicate records removed from the the Radjenovic dataset, and one record which had a missing abstract. Duplications were removed using the command
(asreview data dedup MY_DATASET.ris -o output.csv) through the asreview-datatools package, which can be installed using (pip install asreview-datatools). The dataset, after preprocessing, contained 5920 papers (48 records being relevant). 
