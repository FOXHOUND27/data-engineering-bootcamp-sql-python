import random

# To do list cli app built using python

# Creating dictionary to store to do items and Exit variable to control exit
tasks = {}
EXIT = True
# Creating a funnction to add a task


def addTask(name, taskNumber, isComplete=False):
    task = {"name": name, "Complete": isComplete}
    tasks[taskNumber] = task

# Creating a function to remove task using task number


def removeTask(name):
    tasks.pop(name)


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

# Creating function to view all tasks


def viewTasks():
    for task in tasks:
        print(tasks[task])


while EXIT == True:
    # Menu options
    print("\n📝 To-Do List Menu:")
    print("1. Add Task")
    print("2. View Tasks")
    print("3. Remove Task")
    print("5. Exit")

    choice = input("Enter choice (1-5) : ")

    if choice == '1':
        task = input('Enter task name : ')
        randomNumber = random.randint(1, 10)
        addTask(task, randomNumber)
        print('Task added succesfully.')

    if choice == '2':
        print('Your to do list')
        viewTasks()

    if choice == '5':
        EXIT = False
