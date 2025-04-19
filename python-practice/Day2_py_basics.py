# To do list cli app built using python

# Creating dictionary to store to do items
tasks = {}

# Creating a funnction to add a task


def addTask(name, taskNumber, isComplete=False):
    task = {"name": name, "Complete": isComplete}
    tasks[taskNumber] = task

# Creating a function to remove task using task number


def removeTask(taskNumber):
    tasks.pop(taskNumber)


print(tasks)
