# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8]  # Bottom row
  [0,3,6]  # Left column
  [0,4,8]  # Left diagonal
  [2,4,6]  # Right diagonal
]
