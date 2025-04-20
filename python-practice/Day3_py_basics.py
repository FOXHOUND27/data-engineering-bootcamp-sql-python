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


# Creating a function to mutate the complete state
def markTask(taskNumber):
    if taskNumber in tasks:
        tasks[taskNumber]["Complete"] = True
        print("Task Marked as complete")
    else:
        print("Task not found")

# Creating a function for deleting the task


def deleteTask(taskNumber):
    tasks.pop(taskNumber)


addTask("Clean House", 1)
addTask("Bath Dog", 2)
addTask("Iron Clothes", 3)


print(tasks)
