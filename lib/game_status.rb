# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # bottom row
  [0,3,6],  # 1st column
  [1,4,7],  # middle column
  [2,5,8],  # 3rd column
  [0,4,8],  # diagonal 0 through 8
  [2,4,6],  # diagonal 2 through 6
]
def won?(board)
  WIN_COMBINATIONS.detect do |row| # row accounts for a winning combination
    board[row[0]] == board[row[1]] &&
    board[row[1]] == board[row[2]] &&
    position_taken?(board, row[0])
  end
end

def full?(board)
  board.all?{|player| player == "X" || player == "O"}
end       #.all? passes each element of the collection to the given block.
          # The #all?  returns true if the block never returns false or nil.

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  if winning_combo = won?(board)
  board[winning_combo.first]
  end
end
