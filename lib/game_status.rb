# Helper Method

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top_row_win
  [3,4,5], #middle_row_win
  [6,7,8], #bottom_row_win
  [0,3,6], #left_column_win
  [1,4,7], #middle_column_win
  [2,5,8], #right_column_win
  [0,4,8], #left_diagonal_win
  [2,4,6] #right_diagonal_win
]

def won?(board)
  WIN_COMBINATIONS.detect {|combo| board[combo[0]] == board[combo[1]] && board[combo[0]] == board[combo[2]] && position_taken?(board, combo[0])}
end

def full?(board)
  board.all? {|spot| spot != " "}
end

def draw?(board)
  if !won?(board) == true && full?(board) == true
    return true
  end
end

def over?(board)
  if draw?(board) == true || won?(board) || full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if winning_combo = won?(board)
    # binding.pry
    board[winning_combo.first]
  end
end
