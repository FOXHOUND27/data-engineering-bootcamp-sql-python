# Creating a mini project to get an understanding of dictionaries.

# This is a mini app to store student grades in a dictionary

gradebook = {}

# function to add or update student grades


def add_update_student(name, subject, grade):
    # check to see if name exists and if not its added to the dictionary
    if name not in gradebook:
        gradebook[name] = {}

    # adding subject grade
    gradebook[name][subject] = grade


def view_student(name):
    if name in gradebook:
        print(f"Grades for {name}")

        for subject, grade in gradebook[name].items():
            print(f"{subject} : {grade}")
