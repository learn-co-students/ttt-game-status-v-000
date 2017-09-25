# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

WIN_COMBINATIONS = [
  [0,1,2], #top-row win
  [3,4,5], #mid-row win
  [6,7,8], #bottom-row win
  [0,3,6], #left col win
  [1,4,7], #mid col win
  [2,5,8], #right col win
  [0,4,8], #left diag win
  [2,4,6]  #right diag win
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combo| #iterate over all arrays w/in WIN_COMBINATIONS to find....
    win_combo.all? { |value| board[value] == "X"} || #which array w/in the WIN_COMBINATIONS has all indexes equaling X, per the board values
    win_combo.all? { |value| board[value] == "O"}
  end
end

def full?(board)
  board.all? do |value|
    value == "X" || value == "O"
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    return true #true if -- board has not been won and is full
  elsif !won?(board) && !full?(board)
    return false #false if -- board has not been won and is NOT full
  else false #false if -- board is won
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else false
  end
end

#return "X" or "O" player who won board

def winner(board)
  if !won?(board)
    return nil
  else board[won?(board)[0]]
  end
end
