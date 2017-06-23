# We'll be building helper methods that introspect and report on the various game states
# in Tic Tac Toe# including if the game has been `#won?`,
# if the game board is `#full?`,
# if the game has been a `#draw?`,
# if the game is `#over?`,
# and finally who the `#winner` is.

for each win_combination in WIN_COMBINATIONS
  # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
  # grab each index from the win_combination that composes a win.
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3

  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination # return the win_combination indexes that won.
  else
    false
  end
end
# That is a very verbose and explicit example of how you might iterate over a nested array
# of WIN_COMBINATIONS and checking each win combination index against the value of the
# board at that position.
# For example, on a board that has a winning combination in the top row, #won? should
# return [0,1,2], the indexes in the board that created the win:

# win_combination is a nested array containing the indexes of the board array; which,
# must be occupied by the same player (either player_X or player_O) in order for the game
# to be won.

Create a nested array.
