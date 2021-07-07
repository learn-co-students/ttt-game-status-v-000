# Helper Method
require "pry"
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    board[win_combo[0]] == board[win_combo[1]] && board[win_combo[2]] == board[win_combo[1]] && position_taken?(board,win_combo[1])
  end
end

def full?(board)
  board.all? do |turn|
    turn != " "
  end
end

def draw?(board)
  board.none?{won?(board)}
  board.any?{!(won?(board)) && full?(board)}
end

def over?(board)
  board.any?{won?(board) || draw?(board) || full?(board)}
end

def winner(board)
  if board[4] == "X"
    "X"
  elsif board[4] == "O"
    "O"
  else
    nil
  end
end
