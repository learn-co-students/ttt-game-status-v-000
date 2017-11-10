# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
   [0,1,2], [3,4,5], [6,7,8], #Rows
   [0,3,6], [1,4,7], [2,5,8], #Columns
   [0,4,8], [2,4,6] #Diagonals
 ]

def won?(board)
  top_row_win = WIN_COMBINATIONS[0]
  middle_row_win = WIN_COMBINATIONS[1]
  bottom_row_win = WIN_COMBINATIONS[2]
  left_col_win = WIN_COMBINATIONS[3]
  middle_col_win = WIN_COMBINATIONS[4]
  right_col_win = WIN_COMBINATIONS[5]
  left_diag_win = WIN_COMBINATIONS[6]
  right_diag_win = WIN_COMBINATIONS[7]

  if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board[top_row_win[2]] == "X"
    "X won in the top row"
    top_row_win
  elsif board[top_row_win[0]] == "O" && board[top_row_win[1]] == "O" && board[top_row_win[2]] == "O"
    "O won in the top row"
    top_row_win
  elsif board[middle_row_win[0]] == "X" && board[middle_row_win[1]] == "X" && board[middle_row_win[2]] == "X"
    "X won in the middle row"
    middle_row_win
  elsif board[middle_row_win[0]] == "O" && board[middle_row_win[1]] == "O" && board[middle_row_win[2]] == "O"
    "O won in the middle row"
    middle_row_win
  elsif board[bottom_row_win[0]] == "X" && board[bottom_row_win[1]] == "X" && board[bottom_row_win[2]] == "X"
    "X won in the bottom row"
    bottom_row_win
  elsif board[bottom_row_win[0]] == "O" && board[bottom_row_win[1]] == "O" && board[bottom_row_win[2]] == "O"
    "O won in the bottom row"
    bottom_row_win
  elsif board[left_col_win[0]] == "X" && board[left_col_win[1]] == "X" && board[left_col_win[2]] == "X"
    "X won in the left column"
    left_col_win
  elsif board[left_col_win[0]] == "O" && board[left_col_win[1]] == "O" && board[left_col_win[2]] == "O"
    "O won in the left column"
    left_col_win
  elsif board[middle_col_win[0]] == "X" && board[middle_col_win[1]] == "X" && board[middle_col_win[2]] == "X"
    "X won in the middle column"
    middle_col_win
  elsif board[middle_col_win[0]] == "O" && board[middle_col_win[1]] == "O" && board[middle_col_win[2]] == "O"
    "O won in the middle column"
    middle_col_win
  elsif board[right_col_win[0]] == "X" && board[right_col_win[1]] == "X" && board[right_col_win[2]] == "X"
    "X won in the right column"
    right_col_win
  elsif board[right_col_win[0]] == "O" && board[right_col_win[1]] == "O" && board[right_col_win[2]] == "O"
    "O won in the right column"
    right_col_win
  elsif board[left_diag_win[0]] == "X" && board[left_diag_win[1]] == "X" && board[left_diag_win[2]] == "X"
    "X won in the left diagonal"
    left_diag_win
  elsif board[left_diag_win[0]] == "O" && board[left_diag_win[1]] == "O" && board[left_diag_win[2]] == "O"
    "O won in the left diagonal"
    left_diag_win
  elsif board[right_diag_win[0]] == "X" && board[right_diag_win[1]] == "X" && board[right_diag_win[2]] == "X"
    "X won in the right diagonal"
    right_diag_win
  elsif board[right_diag_win[0]] == "O" && board[right_diag_win[1]] == "O" && board[right_diag_win[2]] == "O"
    "O won in the right diagonal"
    right_diag_win
  end
end

def full?(board)
  if board.all?{|x| x == "X" || x == "O"}
    true
  else
    false
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  elsif won?(board)
    false
  end
end

def over?(board)
  if won?(board) || draw?(board)
    true
  else
    false
  end
end

def winner(board)
  winning_combo = won?(board)
  if won?(board)
  board[winning_combo[0]]
  else
    nil
  end
end
