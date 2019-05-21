# Helper Method
#require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
  WIN_COMBINATIONS = [
    [0,1,2], # Top row
    [3,4,5], # Middle row
    [6,7,8], # Bottom row
    [0,3,6], # Right column
    [1,4,7], # Middle column
    [2,5,8], # Left column
    [0,4,8], # Left diagonal
    [2,4,6]  # Right diagonal
    # ETC, an array for each win combination
  ]

# Define won?(board) method
def won?(board)
  WIN_COMBINATIONS.detect do |win_index|
    #binding.pry
    board[win_index[0]] == board[win_index[1]] && board[win_index[1]] == board[win_index[2]] && position_taken?(board, win_index[0])
  end
end

# Define full?(board) method
def full?(board)
  board.none? {|t| t == " "}
end

# Define draw?(board) method
def draw?(board)
full?(board) && !won?(board)
end

# Define over?(board) method
def over?(board)
  board.none? {|t| t == " "}
  end

# Define winner?(board) method
def winner(board)
  if winning_combo = won?(board)
     board[winning_combo.first]
    end
  end
