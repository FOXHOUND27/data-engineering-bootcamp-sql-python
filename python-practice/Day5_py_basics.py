# Building a BMI calculator in python for my day 5 project

def calculateBMI(weight, height):
    squaredHeight = height ** 2
    BMI = weight/squaredHeight

    return round(BMI, 2)


EXIT = True

while EXIT:
    print("Welcome to Body Mass Index Calculaor")
    print("Options")
    print("1. Calculate BMI")
    print('2.Exit')

    choice = input("Enter your choice : ")

    if choice == '2':
        EXIT = False

    if choice == '1':
        weight = float(input('Please enter your weight (Kilograms) : '))
        height = float(input('Please enter your height : '))

        if weight < 0:
            print('Weight cannot be zero or negative.')

        if height < 0:
            print('Height cannot be zero or negative.')

        userBMI = calculateBMI(weight, height)

        print(f'Your BMI is : {userBMI}')

        if userBMI < 18.5:
            print("You are underweight.")

        if userBMI >= 18.5 and userBMI <= 24.9:
            print("You are normal weight.")

        if userBMI >= 25 and userBMI <= 29.9:
            print('You are overweight.')

        if userBMI >= 30:
            print('You are overweight.')

# completed a working BMI calculator
