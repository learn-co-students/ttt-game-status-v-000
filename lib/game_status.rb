# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# WIN_COMBINATIONS shows the indexes of board that must be occupied by the same token for a win
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
]

# Here are some test arrays to play with:
# board = ["X", "X", "X", " ", " ", "O", " ", " ", " "]
# empty_board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
# draw_board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
# x_diagonal_won = ["X", "O", "X", "O", "X", "O", "O", "O", "X"]

# The #won? method should return false if a board is empty, return the array if a win combination is met, and otherwise return false.
# Note that the final `return false` simply means that the default of the method is to return false. So, if none of the previous statements are met, it will get down to the last part of the method and return fale.
# Note also that my soloution is really long; the official solution is much shorter and more elegant.
def won?(board)
  #if board.all? {|index| index == " "}
  #  false
  if WIN_COMBINATIONS.each do |win_array|
    win_index_1 = win_array[0]
    win_index_2 = win_array[1]
    win_index_3 = win_array[2]
      if board[win_index_1] == board[win_index_2] && board[win_index_2] == board[win_index_3] && board[win_index_1] == board[win_index_3] && board[win_index_1] != " "
        return win_array
      end
    end
  end
  return false
end

# The #full? method should accept a board and return true if every element in the board contains either an "X" or an "O".
# This is the only method that I solved the 'right' way.
def full?(board)
  board.all? {|index| index == "X" || index == "O"}
end

# The #draw? method accepts a board and returns true if the board has not been won and is full and false if the board is not won and the board is not full, and false if the board is won.
# I'm leaving this as I originally wrote it, but note that you could delete everything after the first `if` statement and ti would still work.
def draw?(board)
  if full?(board) && !won?(board)
    true
  elsif won?(board)
    false
  else !full?(board)
    false
  end
end

# The #over? method accepts a board and returns true if the board has been won, is a draw, or is full.

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    true
  end
end

# The #winner method should accept a board and return the token, "X" or "O" that has won the game given a winning board.
# In the official solution, they set won?(board) equal to a variable. I prefer not to introduce new variables.
# (won?(board)).kind_of?(Array)
def winner(board)
  if won?(board)
    board[won?(board)[0]]
  end
end
