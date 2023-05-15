import os
import pandas as pd

os.chdir("C:/Users/fionn/Documents/asreview_ATD_calculations/data/output/simulation/Nelson_2002/tables")

df = pd.read_csv("data_tds.csv")

def average_record_TD(df, prior=False):
    df['average_record_TD'] = df.mean(axis=1)
    return df

average_record_TD(df)

def average_simulation_TD(data, priors=False):
    df.loc['average_simulation_TD'] = df.iloc[:, 2:-1].mean(axis=0)
    return df

average_simulation_TD(df)

# display entire df
pd.set_option('display.max_rows', None)

average_sim_ATD = df.iloc[-1].mean()
print(f"average_sim_ATD: {average_sim_ATD:.50f}")

average_record_TD = df['average_record_TD'].mean()
print(f"average_record_TD: {average_record_TD:.50f}")

def get_T_values(df):

    avg_record_TDs = df['average_record_TD'].dropna()

    avg_sim_TDs = df.loc['average_simulation_TD'].dropna()

    average_record_TD = df['average_record_TD'].mean()

    average_sim_ATD = df.iloc[-1].mean()

    result = {
        "asreviewVersion": asreview.__version__,
        "apiVersion": version,
        "data": {
            "items": [{
                "id": "artds",
                "title": "Average record time to discovery",
                "value": _average_time_to_discovery(td)
            }, {
                "id": "td",
                "title": "Time to discovery",
                "value": td
            }]
        }
    }

    return result






