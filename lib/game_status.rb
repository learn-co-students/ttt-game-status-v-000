# Helper Method
require 'pry'

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]
def won?(board)
  WIN_COMBINATIONS.detect do |w|
    board[w[0]] ==  board[w[1]] && board[w[2]] == board[w[0]] && position_taken?(board, w[0])
  end
end

def full?(board)
  board.all? do |b|
    b == "X" || b == "O"
  end
end

def draw?(board)
  board.all? do |b|
    b == "X" || b == "O" && !won?(board)
    end
end

def over?(board)
  board.all? do |b|
    b == "X" || b == "O" && !won?(board) || won?(board)
  end
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo[0]]
  end
end
