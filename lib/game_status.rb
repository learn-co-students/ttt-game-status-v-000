# Helper Method
board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]
# Define WIN_COMBINATIONS constant with arrays for each win combo
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # LT to RB diagonal
  [6,4,2] # LB to RT diagonal
  ]

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def full?(board)
  board.all? { |p| p != " " }
end

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
  board[win_combination[0]] == board[win_combination[1]] && board[win_combination[1]] == board[win_combination[2]] && position_taken?(board, win_combination[0])
  end
end

def draw?(board)
!won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if win_combination = won?(board)
    board[win_combination.first]
  # else
  #   nil
  end
end
