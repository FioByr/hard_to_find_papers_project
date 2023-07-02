# The influence of active learning model and prior knowledge choice on how long it takes to find hard-to-find relevant papers: Examining the variability of the time to discovery and the stability of its rank-orders

## Description 

The purpose of this project was to explore how the choice of active learning (AL) model and prior knowledge influences the time to discovery (TD) of the hard-to-find relevant papers in a dataset while using an AL-aided screening tool in the context of systematic reviewing (e.g., ASReview)

This repository contains the files to reproduce the simulation study and the subsequent analysis of the data for this project (which was conducted for a Master's thesis in Applied Data Science from Utrecht University). 

## Table of Contents

### `data`
This contains the information on how to access the dataset and how to preprocess it. 

### `modified_scripts`

This folder contains the scripts that were modified/generated to extract the TD and the rank-order of the TD tables through the ASReview Makita workflow generator.

### `multiple_models_simulation`

This folder contains the scripts and folders/files that were generated through the ASReview Makita workflow generator to conduct the simulation study. The scripts (as a jobs.bat file) to reproduce the multiple models simulation are contained. 

### `arfi_simulation`

This folder contains the scripts and folders/files that were generated through the ASReview Makita workflow generator to conduct the simulation study. The scripts (as a jobs.bat file) to reproduce the ARFI simualtion are contained.

### `analysis_notebook`

This file contains all the code necessary to reproduce the analysis of the study. 

## How to reproduce the project

### 1. Access and preprocess the data 

Please refer to the readme from the data folder

### 2. Install ASReview (and Makita)

Please refer to the readme in the scripts folder. 

### 3. Run the jobs.bat files in the simulation folders

Run the jobs.bat files from the arfi_simulation and the multiple_models simulation folders (when the data has been accessed and prepocessed).

OR 

### 3. Download the modified version of Makita and then run the simulations

PLease refer to the readme in the scripts folder.

### 4. Run the analysis notebook to generate the results

Open analysis_notebook and run the scripts (making sure to change the directory to where you have the hard_to_find_papers_project repo stored on your local computer).

## License

This project is published under the MIT license.




