# Helper Method
require "pry"
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
]
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def won?(board)
  WIN_COMBINATIONS.detect do |position|
      board[position[0]] == board[position[1]] && board[position[1]] == board[position[2]] && board[position[2]] != " "
  end
end

def full?(board)
  board.include?("X" || "O")
  !board.include?(" ")
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  if won?(board) == nil || board[won?(board).first] != "X" && board[won?(board).first] != "O"
    return nil
  elsif board[won?(board).first] == "X"
      return "X"
    else "O"
  end
end
