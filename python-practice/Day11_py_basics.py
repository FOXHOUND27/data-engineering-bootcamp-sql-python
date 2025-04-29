import pandas as pd

# Finally learning and working with pandas

# Creating a method for data extraction from a csv file


def extract_data(file_path):
    data = pd.read_csv(file_path)

    return data


def transform_data(data):
    # removing rows with missing values
    data.dropna()

    return data


survey_data = extract_data("C:/Users/liong/Downloads/Survey.csv")

transformed_data = transform_data(survey_data)

print(transform_data)
