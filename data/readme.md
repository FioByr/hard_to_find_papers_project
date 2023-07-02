# Data 

## How to access the data?

### Synergy dataset
The data used in the current project was the Radjenović dataset (Radjenović et al., 2013) which was taken from the SYNERGY dataset (De Bruin et al., 2023). The SYNERGY dataset can be donwloaded by first installing the synergy-dataset Python package.

````bash
pip intall synergy-dataset
````

Then run this command in the command line.

````bash
python -m synergy_dataset get 
````

Alternatively, .zip of the dataset can be downloaded at https://dataverse.nl/dataset.xhtml?persistentId=doi:10.34894/HE6NAQ

## How to pre-process the data?

### Deduplication
There were 14 duplicate records removed from the the Radjenović dataset, and one record which had a missing abstract was also deleted. Duplications were removed using a the deduplication from asreview-datatools, which can be installed via this command. 

````bash
pip install asreview-datatools
````

Deduplication can be then completed by running this command.

````bash
asreview data dedup Radjenovic_2013.csv -o Radjenovic_2013_ndup.csv
````

### Remove missing abstracts 

To remove the missing abstracts run the script data_preprocessing.py. One record with a missing abstract is removed. The new dataset Radjenovic_2013_ndup_nnan.csv is saved within the data files within each of the simulation project folders (multiple_models_simulation and arfi_simulation). 
