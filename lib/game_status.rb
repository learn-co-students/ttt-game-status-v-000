# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row [0]
  [3,4,5], # Middle row [1]
  [6,7,8], # Bottom row
  [0,3,6], # First column
  [1,4,7], # Second column
  [2,5,8], # Third column
  [0,4,8], # Top Left diagonal
  [2,4,6] # Top Right diagonal [8]
]

def won?(board)
  blah = []
  board.each do ||

  end
  blah
end
