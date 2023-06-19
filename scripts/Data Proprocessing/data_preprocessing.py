import pandas as pd
import os

os.chdir("C:/Users/fionn/Downloads")

df = pd.read_csv("ptsd.csv")

len(df)

df.groupby('included').count()

os.chdir("C:/Users/fionn/Documents/hard_to_find_papers_project/data/synergy_dataset")

df = pd.read_csv("Radjenovic_2013.csv")

# missing values in abstract and title
df['title'].isnull().sum()
df['abstract'].isnull().sum()

# remove duplicates
df = df.drop_duplicates(subset=['title', 'abstract'], keep='first')

# number of rows 
len(df)

os.chdir("C:/Users/fionn/Downloads")

df = pd.read_csv("Radjenovic_2013_ndup.csv")

df['abstract'].isnull().sum()

# drop nan values
df = df.dropna(subset=['abstract'])

# export to csv
df.to_csv("Radjenovic_2013_ndup_nnan.csv", index=False)

os.chdir("C:/Users/fionn/Downloads")

df = pd.read_csv("Radjenovic_2013_ndup_nnan.csv")
df['label_included'].value_counts()
len(df)
