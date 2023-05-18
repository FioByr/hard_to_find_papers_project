import argparse
import glob
import json
from pathlib import Path
import pandas as pd
import os

def create_table_state_tds(metrics):
    values = []

    for metric in metrics:
        with open(metric) as f:
            i = next(filter(lambda x: x['id'] == 'td', json.load(f)['data']['items']))['value']
            values.extend(i)
            df = pd.DataFrame(values, columns=['record_id', 'td'])
            pivoted = df.pivot_table(index='record_id', columns=df.groupby('record_id').cumcount()+1, values='td', aggfunc='first')
            pivoted.columns = [f'td_{col}' for col in pivoted.columns]
            pivoted = pivoted.reset_index()
    return pivoted

def split_file_paths(file_paths):
    simulations = {}
    for path in file_paths:
        dirname = os.path.dirname(path)
        if dirname not in simulations:
            simulations[dirname] = []
        simulations[dirname].append(path)
    return simulations


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Merge tds of multiple metrics into single table."
    )
    parser.add_argument(
        "-s",
        type=str,
        default="output/simulation/*/metrics/metrics_sim_*.json", 
        help="metrics location")
    parser.add_argument(
        "-o",
        type=str,
        default="../tables/data_tds.csv",
        help="Output table location")
    args = parser.parse_args()

    # load metrics
    metrics = glob.glob(args.s)
    simulations = split_file_paths(metrics)
    simulations.items()

    # merge results for each simulation
    for dirname, sim_metrics in simulations.items():
        result = create_table_state_tds(sim_metrics)

        # store result in output folder
        output_path = os.path.abspath(os.path.join(dirname, args.o))
        Path(output_path).parent.mkdir(parents=True, exist_ok=True)
        result.to_csv(output_path)
        result.to_excel(os.path.splitext(output_path)[0] + '.xlsx')


