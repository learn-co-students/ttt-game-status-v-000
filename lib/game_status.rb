# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], #top_row_win
  [3,4,5], #middle_row_win
  [6,7,8], #bottom_row_win
  [0,3,6], #left_column_win
  [1,4,7], #center_column_win
  [2,5,8], #right_column_win
  [0,4,8], #left_diagonal_win
  [2,4,6] #right_diagonal_win
]

def won?(board)
  WIN_COMBINATIONS.find do |win_combo|
  # win_combo.find do |win_index|
    board[win_combo[0]] == board[win_combo[1]] && board[win_combo[0]] == board[win_combo[2]] && position_taken?(board, win_combo[1])
    ##   end #!position_taken?(board, index)
  end
end

def full?(board)
  board.all? do |full_board|
  full_board == "X" || full_board == "O" || full_board == "nil"
end
end

def draw?(board)
  won?(board) == nil && full?(board) == true
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  if(draw?(board) || !full?(board)) && !won?(board)
    return nil
  elsif (board[won?(board)[0]] == "X")
    return "X"
  elsif (board[won?(board)[0]] == "O")
    return "O"
end
end
