import pandas as pd
import os

# edit current working directory so that its set to folder containing hard_to_find_papers_project GitHub repository
current_directory = os.chdir()

df = pd.read_csv("data/Radjenovic_2013_ndup.csv")

# missing values in abstract and title
df['title'].isnull().sum()
df['abstract'].isnull().sum()

# number of rows 
len(df)

# drop nan values
df = df.dropna(subset=['abstract'])

os.chdir(os.path.join(current_directory, "data/output"))

df.to_csv("Radjenovic_2013_ndup_nnan.csv", index=False)

os.chdir(os.path.join(current_directory, "ARFI_simulation/data"))

# export to csv
df.to_csv("Radjenovic_2013_ndup_nnan.csv", index=False)

os.chdir(os.path.join(current_directory, "multiple_models_simulation/data"))
         
df.to_csv("Radjenovic_2013_ndup_nnan.csv", index=False)

df = pd.read_csv("Radjenovic_2013_ndup_nnan.csv")
df['label_included'].value_counts()
len(df)
