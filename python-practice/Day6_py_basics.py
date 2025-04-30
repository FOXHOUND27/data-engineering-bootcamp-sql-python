# commiting partial completion of my python code for a mini gamee

import random


def roll():
    min_value = 1
    max_value = 6
    roll = random.randint(min_value, max_value)

    return roll


while True:
    players = input('Enter the number of players (1-3) : ')

    if players.isdigit():
        players = int(players)
        if 1 <= players <= 3:
            print('Players must be between 1 - 3 ')
            break
        else:
            print('Invalid , please try again')

print(players)
