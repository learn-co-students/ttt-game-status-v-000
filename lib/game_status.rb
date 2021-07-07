require 'pry'

# Helper Method
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
  [2,4,6]
]

def won?(board)
WIN_COMBINATIONS.detect do |win_combination|

win_index_1 = win_combination[0]
win_index_2 = win_combination[1]
win_index_3 = win_combination[2]

pos_1 = board[win_index_1]
pos_2 = board[win_index_2]
pos_3 = board[win_index_3]

if pos_1 == "X" && pos_2 == "X" && pos_3 == "X"
return win_combination
end
if pos_1 == "O" && pos_2 == "O" && pos_3 == "O"
return win_combination
end
end
end

def draw?(board)
full?(board) && !won?(board)
end

def over?(board)
  if draw?(board) || won?(board)
    true
  else
    false
  end
end

def full?(board)
  board.all?{|token| token == "X" || token == "O"}
end

def winner(board)
  if won?(board)
    won?(board).select do |pos|
  if board[pos[0]] == "X"
    return "X"
  else board[pos[0]] == "O"
    return "O"
  end
  end
end
end
