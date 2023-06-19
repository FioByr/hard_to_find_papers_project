def test_average_record_TD():
    np.random.seed(42)
    df = pd.DataFrame(np.random.randint(0,100,size=(5, 4)), columns=list('ABCD'))
    df = average_record_TD(df)
    artd = df['average_record_TD'].to_list()
    assert artd == [42.5, 84.0, 93.0, 36.5, 33.0]

def test_average_simulation_TD():
    np.random.seed(42)
    df = pd.DataFrame(np.random.randint(0,100,size=(5, 4)), columns=list('ABCD'))
    df = average_simulation_TD(df)
    astd = df.loc['average_simulation_TD'].dropna().to_list()
    assert astd == [46.6]