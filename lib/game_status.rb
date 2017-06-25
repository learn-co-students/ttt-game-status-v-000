# Helper Method
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
  [2,4,6],
]
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
      if win_combination.all? {|i| board[i] == "X"} || win_combination.all? {|i| board[i] == "O"}
        binding.pry
        return win_combination
      else
        return false
    end
  end
end
