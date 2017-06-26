WINNING_COMBINATION = [
						[0,1,2],
						[3,4,5],
						[6,7,8],
						[0,3,6],
						[1,4,7],
						[2,5,8],
						[0,4,8],
						[6,4,2]
								]

# Winning_Combination is a nested array containing the indexes of the board array that
# must be occupied by the same player (either player_X or player_O), in order for the game
# to be won.

# We will need to check to see if the player occupying the WINNING_COMBINATION position
# is the same player for all 8 possible combinations.
# Create an 2 dimensional array that contains each players position throughtout the game.
# Compare that array against the WINNING_COMBINATION array. When a match is found the game
# is won.
# Let's reorder the WINNING_COMBINATION array to make looping through the array easier.
# [0,1,2]
# [0,3,6]
# [0,4,8]
# [1,4,7]
# [2,5,8]
# [3,4,5]
# [6,4,2]
# [6,7,8]
# For instance, if a player occupies the top left corner board position "board[]" there
# are only three ways to win:
# [0,1,2]
# [0,3,6]
# [0,4,8]


# Psuedo Code example:
# So the first check for these combinations is what player occupies board[0]?
#  then check if the same player is at board[1]? if yes then is he at board[2]? if yes win!
# elseif same player is not at board[1] then is he at board[3]? if yes, at board[6]? if yes win!
# elseif same player is not at board[3] then is he at board[4]? if yes, at board[8]?
# if yes win! not a winner!
# continue this for the remaining WINNING_COMBINATIONs.

WINNING_COMBINATION.each do |win|
  win.each do |win_index|
    puts win_index
  end
end

# check position board# [1] if
# board# [3], and board# [4]. 
