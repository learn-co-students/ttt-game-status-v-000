require 'pry'
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
  [2,4,6]
]
def won? (board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] && board[combo[2]] == board[combo[1]] && board[combo[1]] != " "
end
end

def full? (board)
  board.all? do |space|
    space != (" ")
  end
end

def draw? (board)
  if !won?(board) && full?(board)
    true
  else
    false
  end
end

def over? (board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end

def winner (board)
  if won?(board)
  win = won?(board)
  board[win[0]]
end
end
