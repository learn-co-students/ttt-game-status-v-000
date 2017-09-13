require 'pry'

# Helper Method
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
[2,4,6],
]
def won?(board)
  WIN_COMBINATIONS.detect do |win|
    position_taken?(board, win[0] ) && board[win[0]] == board[win[1]] && board[win[2]] == board[win[0]]
  end
end

def full?(board)
  board.all? do |space|
  space == "X" || space == "O"
  end
end

def draw?(board)
  if won?(board)
    false
  elsif full?(board)
    true
 end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
   true
 end
end

def winner(board)

  if won?(board)
  win_index = won?(board)[2]
  board[win_index]
 end
end
