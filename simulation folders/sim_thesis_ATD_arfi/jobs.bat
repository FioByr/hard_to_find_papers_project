@ echo off
COLOR E0

:: version 0.6.3

:: Create folder structure. By default, the folder 'output' is used to store output.
mkdir output
mkdir output\simulation

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Radjenovic_2013_ndup_nnan
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Create output folder
mkdir output\simulation\Radjenovic_2013_ndup_nnan\
mkdir output\simulation\Radjenovic_2013_ndup_nnan\metrics

:: Collect descriptives about the dataset
mkdir output\simulation\Radjenovic_2013_ndup_nnan\descriptives
asreview data describe data\Radjenovic_2013_ndup_nnan.csv -o output\simulation\Radjenovic_2013_ndup_nnan\descriptives\data_stats_Radjenovic_2013_ndup_nnan.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Radjenovic_2013_ndup_nnan.csv -o output\simulation\Radjenovic_2013_ndup_nnan\descriptives\wordcloud_Radjenovic_2013_ndup_nnan.png --width 800 --height 500
asreview wordcloud data\Radjenovic_2013_ndup_nnan.csv -o output\simulation\Radjenovic_2013_ndup_nnan\descriptives\wordcloud_relevant_Radjenovic_2013_ndup_nnan.png --width 800 --height 500 --relevant
asreview wordcloud data\Radjenovic_2013_ndup_nnan.csv -o output\simulation\Radjenovic_2013_ndup_nnan\descriptives\wordcloud_irrelevant_Radjenovic_2013_ndup_nnan.png --width 800 --height 500 --irrelevant

:: Simulate runs, collect metrics and create plots
mkdir output\simulation\Radjenovic_2013_ndup_nnan\state_files
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_88.asreview --prior_record_id 88 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_88.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_88.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_400.asreview --prior_record_id 400 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_400.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_400.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_466.asreview --prior_record_id 466 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_466.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_466.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_490.asreview --prior_record_id 490 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_490.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_490.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_542.asreview --prior_record_id 542 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_542.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_542.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_588.asreview --prior_record_id 588 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_588.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_588.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_624.asreview --prior_record_id 624 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_624.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_624.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_733.asreview --prior_record_id 733 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_733.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_733.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_734.asreview --prior_record_id 734 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_734.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_734.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_753.asreview --prior_record_id 753 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_753.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_753.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_758.asreview --prior_record_id 758 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_758.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_758.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_1395.asreview --prior_record_id 1395 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_1395.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_1395.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_1405.asreview --prior_record_id 1405 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_1405.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_1405.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_1888.asreview --prior_record_id 1888 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_1888.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_1888.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_1891.asreview --prior_record_id 1891 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_1891.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_1891.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_1959.asreview --prior_record_id 1959 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_1959.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_1959.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_2010.asreview --prior_record_id 2010 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_2010.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_2010.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_2255.asreview --prior_record_id 2255 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_2255.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_2255.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_2312.asreview --prior_record_id 2312 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_2312.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_2312.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_2377.asreview --prior_record_id 2377 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_2377.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_2377.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_2398.asreview --prior_record_id 2398 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_2398.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_2398.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_2475.asreview --prior_record_id 2475 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_2475.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_2475.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_2640.asreview --prior_record_id 2640 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_2640.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_2640.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_2768.asreview --prior_record_id 2768 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_2768.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_2768.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_3142.asreview --prior_record_id 3142 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_3142.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_3142.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_3186.asreview --prior_record_id 3186 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_3186.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_3186.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_3230.asreview --prior_record_id 3230 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_3230.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_3230.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_3376.asreview --prior_record_id 3376 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_3376.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_3376.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_3529.asreview --prior_record_id 3529 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_3529.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_3529.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_3621.asreview --prior_record_id 3621 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_3621.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_3621.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_3932.asreview --prior_record_id 3932 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_3932.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_3932.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_4056.asreview --prior_record_id 4056 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_4056.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_4056.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_4241.asreview --prior_record_id 4241 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_4241.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_4241.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_4421.asreview --prior_record_id 4421 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_4421.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_4421.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_4592.asreview --prior_record_id 4592 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_4592.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_4592.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_4597.asreview --prior_record_id 4597 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_4597.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_4597.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_4826.asreview --prior_record_id 4826 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_4826.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_4826.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_4842.asreview --prior_record_id 4842 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_4842.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_4842.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_4924.asreview --prior_record_id 4924 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_4924.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_4924.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_4990.asreview --prior_record_id 4990 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_4990.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_4990.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_5034.asreview --prior_record_id 5034 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_5034.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_5034.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_5147.asreview --prior_record_id 5147 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_5147.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_5147.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_5332.asreview --prior_record_id 5332 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_5332.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_5332.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_5386.asreview --prior_record_id 5386 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_5386.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_5386.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_5492.asreview --prior_record_id 5492 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_5492.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_5492.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_5655.asreview --prior_record_id 5655 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_5655.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_5655.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_5746.asreview --prior_record_id 5746 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_5746.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_5746.json
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_5791.asreview --prior_record_id 5791 4581 1375 2050 2430 2198 5123 2201 5525 3805 2113 --seed 8
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_5791.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_5791.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\ -o output\simulation\Radjenovic_2013_ndup_nnan\plot_recall_sim_Radjenovic_2013_ndup_nnan.png

:: Merge descriptives and metrics
python scripts\merge_descriptives.py
python scripts\merge_metrics.py
python scripts\merge_tds.py
python scripts\merge_td_ranks.py
python scripts\ATD_calculations.py