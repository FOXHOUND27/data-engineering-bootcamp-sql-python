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
        if 2 <= players <= 3:
            break
        else:
            print('Players must be between 1 - 3 ')

    else:
        print('Invalid , please try again')


max_score = 50
player_scores = [0 for _ in range(players)]

print(player_scores)

while max(player_scores) < max_score:
    for player_index in range(players):
        print(f'Player {player_index + 1} , turn has started.')
        current_score = 0

        while True:
            should_roll = input('would you like to roll(y) ? : ')
            if should_roll.lower != 'y':
                break

            value = roll()

            if value == 1:
                print('You rolled 1 , turn done !!')
                current_score = 0
                break
            else:
                current_score += value
                print(f'You rolled a : {value}')

            print(f"Your current score is : {current_score}")

            player_scores[player_index] += current_score
            print(f'your total score is : {player_scores[player_index]}')
