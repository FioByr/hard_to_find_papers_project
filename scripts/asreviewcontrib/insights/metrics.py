import json

import asreview
import numpy as np

from asreviewcontrib.insights.algorithms import _erf_values
from asreviewcontrib.insights.algorithms import _recall_values
from asreviewcontrib.insights.algorithms import _wss_values
from asreviewcontrib.insights.utils import pad_simulation_labels
from asreview import open_state
import os
import argparse
import glob
import pandas as pd

from pathlib import Path

def _slice_metric(x, y, intercept):
    """Find the first value after the intercept.

    intercept[i-1] <= v < intercept[i]

    Arguments
    ---------
    x: numpy.array or list
        The values of the x-axis.
    y: numpy.array or list
        The values of the y-axis.
    intercept: float
        The value of the x-axis to map to the y-axis. If value
        is not present, the first value greater than the intercept
        is used.

    Returns
    -------
    float
    """

    i = np.searchsorted(x, intercept, side='right')
    return y[i - 1]


def recall(state_obj,
           intercept,
           priors=False,
           x_absolute=False,
           y_absolute=False):

    labels = pad_simulation_labels(state_obj, priors=priors)

    return _recall(labels,
                   intercept,
                   x_absolute=x_absolute,
                   y_absolute=y_absolute)


def _recall(labels, intercept, x_absolute=False, y_absolute=False):

    x, y = _recall_values(labels, x_absolute=x_absolute, y_absolute=y_absolute)

    if intercept < x[0]:
        return 0

    return _slice_metric(x, y, intercept)


def wss(state_obj,
        intercept,
        priors=False,
        x_absolute=False,
        y_absolute=False):

    labels = pad_simulation_labels(state_obj, priors=priors)

    return _wss(labels,
                intercept,
                x_absolute=x_absolute,
                y_absolute=y_absolute)


def _wss(labels, intercept, x_absolute=False, y_absolute=False):

    x, y = _wss_values(labels, x_absolute=x_absolute, y_absolute=y_absolute)

    return _slice_metric(x, y, intercept)


def erf(state_obj,
        intercept,
        priors=False,
        x_absolute=False,
        y_absolute=False):

    labels = pad_simulation_labels(state_obj, priors=priors)

    return _erf(labels,
                intercept,
                x_absolute=x_absolute,
                y_absolute=y_absolute)


def _erf(labels, intercept, x_absolute=False, y_absolute=False):

    x, y = _erf_values(labels, x_absolute=x_absolute, y_absolute=y_absolute)

    return _slice_metric(x, y, intercept)


def time_to_discovery(state_obj,
                      priors=False):

    labels = state_obj.get_dataset(["record_id", "label"], priors=priors)

    return _time_to_discovery(labels["record_id"], labels["label"])


def _time_to_discovery(record_ids, labels):

    labels = np.array(labels)
    record_ids = np.array(record_ids)

    v_rel = record_ids[labels == 1]
    i_rel = np.arange(len(labels))[labels == 1] + 1
    # array with numbers from 1 to number of relevant papers
    u_rel = np.arange(len(v_rel)) + 1
    
    return list(zip(v_rel.tolist(), i_rel.tolist(), u_rel.tolist()))


def average_time_to_discovery(state_obj, priors=False):

    labels = state_obj.get_dataset(["record_id", "label"], priors=priors)

    td = _time_to_discovery(labels["record_id"], labels["label"])
    return _average_time_to_discovery(td)


def _average_time_to_discovery(td):

    return float(np.mean([v[1] for v in td]))


def get_metrics(state_obj,
                recall=[0.1, 0.25, 0.5, 0.75, 0.9],
                wss=[0.95],
                erf=[0.10],
                priors=False,
                x_absolute=False,
                y_absolute=False,
                version=None):

    recall = [recall] if not isinstance(recall, list) else recall
    wss = [wss] if not isinstance(wss, list) else wss
    erf = [erf] if not isinstance(erf, list) else erf

    labels = pad_simulation_labels(state_obj, priors=priors)

    td = time_to_discovery(state_obj)

    recall_values = [
        _recall(labels, v, x_absolute=x_absolute, y_absolute=y_absolute)
        for v in recall
    ]
    wss_values = [
        _wss(labels, v, x_absolute=x_absolute, y_absolute=y_absolute)
        for v in wss
    ]
    erf_values = [
        _erf(labels, v, x_absolute=x_absolute, y_absolute=y_absolute)
        for v in erf
    ]

    # based on https://google.github.io/styleguide/jsoncstyleguide.xml
    result = {
        "asreviewVersion": asreview.__version__,
        "apiVersion": version,
        "data": {
            "items": [{
                "id": "recall",
                "title": "Recall",
                "value": [(i, v) for i, v in zip(recall, recall_values)]
            }, {
                "id": "wss",
                "title": "Work Saved over Sampling",
                "value": [(i, v) for i, v in zip(wss, wss_values)]
            }, {
                "id": "erf",
                "title": "Extra Relevant record Found",
                "value": [(i, v) for i, v in zip(erf, erf_values)]
            }, {
                "id": "atd",
                "title": "Average time to discovery",
                "value": _average_time_to_discovery(td)
            }, {
                "id": "td",
                "title": "Time to discovery",
                "value": td
            }]
        }
    }

    return result



def print_metrics(stats):

    print(json.dumps(stats, indent=4))

# this is just here to test output across multiple simulations 

os.chdir("C:/Users/fionn/Documents/ASReview/sim_mm_makita/output/simulation/Nelson_2002")
directory_path = "C:/Users/fionn/Documents/ASReview/sim_mm_makita/output/simulation/Nelson_2002/state_files"
for file_name in os.listdir(directory_path):
    # Check if the item in the directory is a file with the .asreview extension
    if os.path.isfile(os.path.join(directory_path, file_name)) and file_name.endswith(".asreview"):
        file_path = os.path.join(directory_path, file_name)
        with open_state(file_path) as state:
            stats = get_metrics(state)
            print_metrics(stats)
            output_file = os.path.splitext(file_path)[0] + "_output.json"
            # save to current directory as output_new.json
            with open(output_file, "w") as f:
                json.dump(stats, f, indent=4)

# create table for rank_order

def create_table_state_ranks(metrics):
    values = []

    for metric in metrics:
        with open(metric) as f:
            i = next(filter(lambda x: x['id'] == 'td', json.load(f)['data']['items']))['value']
            values.extend((item[0], item[2]) for item in i)
            df = pd.DataFrame(values, columns=['record_id', 'rank_order'])
            pivoted = df.pivot_table(index='record_id', columns=df.groupby('record_id').cumcount()+1, values='rank_order', aggfunc='first')
            pivoted.columns = [f'sim_{col}_ranks' for col in pivoted.columns]
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
        default="metrics/sim_*.json", # **add ouput/ to start of path for actual commit to asreview-makita**
        help="metrics location")
    parser.add_argument(
        "-o",
        type=str,
        default="../tables/data_ranks.csv",
        help="Output table location")
    args = parser.parse_args()

    # load metrics
    metrics = glob.glob(args.s)
    simulations = split_file_paths(metrics)
    simulations.items()

    # merge results for each simulation
    for dirname, sim_metrics in simulations.items():
        result = create_table_state_ranks(sim_metrics)

        # store result in output folder
        output_path = os.path.abspath(os.path.join(dirname, args.o))
        Path(output_path).parent.mkdir(parents=True, exist_ok=True)
        result.to_csv(output_path)
        result.to_excel(os.path.splitext(output_path)[0] + '.xlsx')