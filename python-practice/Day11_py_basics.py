import pandas as pd

# Finally learning and working with pandas

# Creating a method for data extraction from a csv file


def extract_data(file_path):
    data = pd.read_csv(file_path)

    return data


def transform_data(data):
    # dropping columns I dont need
    data.drop(['If your job title needs additional context, please clarify here:',
               'If "Other," please indicate the currency here: ',
               'If your income needs additional context, please provide it here:',
               "If you're in the U.S., what state do you work in?",
               'How many years of professional work experience do you have in your field?'],
              axis=1, inplace=True)
    return data


survey_data = extract_data("C:/Users/liong/Downloads/Survey.csv")

clean_data = transform_data(survey_data)

print(clean_data)
