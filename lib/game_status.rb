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

def input_to_index(user_input)
  user_input.to_i - 1
end

def won?(board)
index_win = WIN_COMBINATIONS.detect do |win|
  binding.pry
  if board[index_win] == "X" || board[index_win] == "Y"
  return WIN_COMBINATIONS
    end
  end
end
