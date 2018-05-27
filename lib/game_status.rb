# Helper Method
require "pry"

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # Top row
  [3, 4, 5], # Middle row
  [6, 7, 8], # Bottom row
  [0, 3, 6], # Left column
  [1, 4, 7], # Middle column
  [2, 5, 8], # Right column
  [0, 4, 8], # Down diagonal
  [6, 4, 2] # Up diagonal
]

def won?(board)
#run .detect over board, because board is an array
WIN_COMBINATIONS.detect do |combo|
  board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] &&
  position_taken?(board, combo[0])
end
end

def full?(board)
  board.all? do |cell|
    cell == "X" || cell == "O"
  end
end


def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board) || draw?(board) || won?(board)
end

def winner(board)
  if won?(board)
    index = won?(board)[0]
    board[index]
  end
end
