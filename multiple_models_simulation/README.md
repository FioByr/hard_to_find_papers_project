# Simulation study

*This project was rendered with ASReview-Makita version 0.6.3.*

This project was rendered from the Makita-multiple_models template. See [asreview/asreview-makita#templates](https://github.com/asreview/asreview-makita#templates) for template rules and formats.

The template is described as: 'Basic simulation for every possible combination of selected models'.

## Installation

This project depends on Python 3.7 or later (python.org/download), and [ASReview](https://asreview.nl/download/). Install the following dependencies to run the simulation and analysis in this project.

```sh
pip install asreview asreview-insights asreview-datatools
```

## Data

The performance on the following datasets is evaluated:

- data\Radjenovic_2013_ndup_nnan.csv

## Run simulation

To start the simulation, run the `jobs.bat` file.

## Structure

The following files are found in this project:

    📦
    ├── 📂data
    │   ├── 📜Radjenovic_2013_ndup_nnan.csv
    ├── 📂output
    │   ├── 📂simulation
    |   |   └── 📂Radjenovic_2013_ndup_nnan
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Radjenovic_2013_ndup_nnan.json
    |   |       |   ├── 📜wordcloud_Radjenovic_2013_ndup_nnan.png
    |   |       |   ├── 📜wordcloud_relevant_Radjenovic_2013_ndup_nnan.png
    |   |       |   └── 📜wordcloud_irrelevant_Radjenovic_2013_ndup_nnan.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Radjenovic_2013_ndup_nnan_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Radjenovic_2013_ndup_nnan_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Radjenovic_2013_ndup_nnan.png
    │   └── 📂tables
    |       ├── 📜data_descriptives.csv
    |       ├── 📜data_descriptives.xlsx
    |       ├── 📜data_metrics.csv
    |       └── 📜data_metrics.xlsx
    ├── 📂scripts
    │   ├── 📜get_plot.py
    │   ├── 📜merge_descriptives.py
    │   ├── 📜merge_metrics.py
    │   ├── 📜merge_tds.py
    │   ├── 📜merge_td_ranks.py
    │   ├── 📜ATD_calculations.py
    │   └── 📜...
    ├── 📜jobs.bat
    └── 📜README.md
