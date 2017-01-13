require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row win
  [3,4,5], # middle row win
  [6,7,8], # bottom row win
  [0,3,6], # left column win
  [1,4,7], # mid column win
  [2,5,8], # right col win
  [0,4,8], # left-to-right diagonal
  [2,4,6] # right-to-left diagonal
]

def won?(board)

end
