# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column
  [0,4,8], #left diagonal
  [2,4,6], #right diagonal
]

board=[" "," "," "," "," "," "," "," "," "]

def won?(board)
  WIN_COMBINATIONS.find do |win_combo|
    board[win_combo[0]] == board[win_combo[1]] && board[win_combo[0]] == board[win_combo[2]] && position_taken?(board,win_combo[0])
  end
end

def full?(board)
  WIN_COMBINATIONS.all? do |win_combo|
    position_taken?(board, win_combo[0])
  end
end

def draw?(board)
  WIN_COMBINATIONS.all? do |win_combo|
    (position_taken?(board, win_combo[0]) && !won?(board))
  end
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if won?(board) != nil
    winner = board[won?(board)[0]]
  end
end
