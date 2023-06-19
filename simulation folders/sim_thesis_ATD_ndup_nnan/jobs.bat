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

:: Collect descriptives about the dataset Radjenovic_2013_ndup_nnan
mkdir output\simulation\Radjenovic_2013_ndup_nnan\descriptives
asreview data describe data\Radjenovic_2013_ndup_nnan.csv -o output\simulation\Radjenovic_2013_ndup_nnan\descriptives\data_stats_Radjenovic_2013_ndup_nnan.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Radjenovic_2013_ndup_nnan.csv -o output\simulation\Radjenovic_2013_ndup_nnan\descriptives\wordcloud_Radjenovic_2013_ndup_nnan.png --width 800 --height 500
asreview wordcloud data\Radjenovic_2013_ndup_nnan.csv -o output\simulation\Radjenovic_2013_ndup_nnan\descriptives\wordcloud_relevant_Radjenovic_2013_ndup_nnan.png --width 800 --height 500 --relevant
asreview wordcloud data\Radjenovic_2013_ndup_nnan.csv -o output\simulation\Radjenovic_2013_ndup_nnan\descriptives\wordcloud_irrelevant_Radjenovic_2013_ndup_nnan.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Radjenovic_2013_ndup_nnan\state_files

:: Classifier = logistic, Feature extractor = doc2vec , Query strategy = max
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_logistic_doc2vec_0.asreview --model logistic --query_strategy max --feature_extraction doc2vec --init_seed 7 --seed 7
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_logistic_doc2vec_0.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_logistic_doc2vec_0.json

:: Classifier = logistic, Feature extractor = sbert , Query strategy = max
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_logistic_sbert_0.asreview --model logistic --query_strategy max --feature_extraction sbert --init_seed 7 --seed 7
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_logistic_sbert_0.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_logistic_sbert_0.json

:: Classifier = logistic, Feature extractor = tfidf , Query strategy = max
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_logistic_tfidf_0.asreview --model logistic --query_strategy max --feature_extraction tfidf --init_seed 7 --seed 7
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_logistic_tfidf_0.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_logistic_tfidf_0.json


:: Skipped nb + doc2vec model


:: Skipped nb + sbert model

:: Classifier = nb, Feature extractor = tfidf , Query strategy = max
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_nb_tfidf_0.asreview --model nb --query_strategy max --feature_extraction tfidf --init_seed 7 --seed 7
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_nb_tfidf_0.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_nb_tfidf_0.json

:: Classifier = rf, Feature extractor = doc2vec , Query strategy = max
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_rf_doc2vec_0.asreview --model rf --query_strategy max --feature_extraction doc2vec --init_seed 7 --seed 7
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_rf_doc2vec_0.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_rf_doc2vec_0.json

:: Classifier = rf, Feature extractor = sbert , Query strategy = max
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_rf_sbert_0.asreview --model rf --query_strategy max --feature_extraction sbert --init_seed 7 --seed 7
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_rf_sbert_0.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_rf_sbert_0.json

:: Classifier = rf, Feature extractor = tfidf , Query strategy = max
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_rf_tfidf_0.asreview --model rf --query_strategy max --feature_extraction tfidf --init_seed 7 --seed 7
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_rf_tfidf_0.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_rf_tfidf_0.json

:: Classifier = svm, Feature extractor = doc2vec , Query strategy = max
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_svm_doc2vec_0.asreview --model svm --query_strategy max --feature_extraction doc2vec --init_seed 7 --seed 7
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_svm_doc2vec_0.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_svm_doc2vec_0.json

:: Classifier = svm, Feature extractor = sbert , Query strategy = max
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_svm_sbert_0.asreview --model svm --query_strategy max --feature_extraction sbert --init_seed 7 --seed 7
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_svm_sbert_0.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_svm_sbert_0.json

:: Classifier = svm, Feature extractor = tfidf , Query strategy = max
asreview simulate data\Radjenovic_2013_ndup_nnan.csv -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_svm_tfidf_0.asreview --model svm --query_strategy max --feature_extraction tfidf --init_seed 7 --seed 7
asreview metrics output\simulation\Radjenovic_2013_ndup_nnan\state_files\sim_Radjenovic_2013_ndup_nnan_svm_tfidf_0.asreview -o output\simulation\Radjenovic_2013_ndup_nnan\metrics\metrics_sim_Radjenovic_2013_ndup_nnan_svm_tfidf_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Radjenovic_2013_ndup_nnan\state_files\ -o output\simulation\Radjenovic_2013_ndup_nnan\plot_recall_sim_Radjenovic_2013_ndup_nnan.png --show_legend model

:: Merge descriptives and metrics
python scripts\merge_descriptives.py
python scripts\merge_metrics.py
python scripts\merge_tds.py
python scripts\merge_td_ranks.py
python scripts\ATD_calculations.py

