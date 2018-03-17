# Helper Method
#require 'pry'

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8],
[0,4,8], [2,4,6]]

def won?(board)
  WIN_COMBINATIONS.detect do |won|
    board1 = won[0]
    board2 = won[1]
    board3 = won[2]
   board[board1] == board[board2] && board[board2] == board[board3] && board[board2] != " "
  end
end

def full?(board)
  !board.include? " "
end

def draw?(board)
  #binding.pry
  full?(board) && !(won?(board))
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
  if won?(board) == nil
     nil
  elsif board[won?(board)[0]] == "X"
     "X"
  elsif board[won?(board)[0]] == "O"
     "O"
  end
end
