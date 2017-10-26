board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # Left diagonal
  [2,4,6]  # Right diagonal
]

# Check if each index in the top_row_win array contains an "X"
if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board[top_row_win[2]] == "X"
  "X won in the top row"
end

def won?(board) # check a tic tac toe board and return true if there is a win and false if not
  WIN_COMBINATIONS.each do |win_combination|
    # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
    # grab each index from the win_combination that composes a win.

    # Definitions of indexes that compose wins
    top_row_win = [0,1,2]
    middle_row_win = [3,4,5]
    bottom_row_win = [6,7,8]
    left_column_win = [0,3,6]
    middle_column_win = [1,4,7]
    right_column_win = [2,5,8]
    left_diagonal_win = [0,4,8]
    right_diagonal_win = [2,4,6]

    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    win_index_4 = win_combination[3]
    win_index_5 = win_combination[4]
    win_index_6 = win_combination[5]
    win_index_7 = win_combination[6]
    win_index_8 = win_combination[7]

    position_1 = board[win_index_1] # load the value of the board at win_index_1..8
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

#    position_taken?(board, index)
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination # return the win_combination indexes that won.
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
        return win_combination # return the win_combination indexes that won.

    position_4 = board[win_index_4]
    position_5 = board[win_index_5]
    position_6 = board[win_index_6]
    position_7 = board[win_index_7]
    position_8 = board[win_index_8]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination # return the win_combination indexes that won.
    else
      false
    end
  end
end

def full?(board)
  board.all? do |index|
    index == "X" || index == "O"
  end
end



def draw?(board)
# accepts a board and returns true if the board has not been won and is full and false if the board is not won and the board is not full,
# and false if the board is won. You should be able to compose this method solely using the methods you used above with some ruby logic.
  if !won?(board) && full?(board)
    true
  elsif !won?(board) && !full?(board)
    false
  elsif won?(board)
    false
  else
    false
  end
end

def over?(board)
# Build a method `#over?` that accepts a board and returns true if the board has been won, is a draw, or is full. You should be able
# to compose this method solely using the methods you used above with some ruby logic.
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end

def winner(board)
# The `#winner` method should accept a board and return the token, "X" or "O" that has won the game given a winning board.
# The `#winner` method can be greatly simplified by using the methods and their return values you defined above.

end
