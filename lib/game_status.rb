# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top Row
  [3,4,5], # Middle Row
  [6,7,8], # Bottom Row
  [0,3,6], # First Column
  [1,4,7], # Second Column
  [2,5,8], # Third Column
  [0,4,8], # Right Diagonal
  [2,4,6]  # Left Diagonal
]

def won?(board)
  WIN_COMBINATIONS.find do |combination|
    combination.all? {|i| board[i] == "X"} || combination.all? {|i| board[i] == "O"}
  end
end

def full?(board)
  board.none? {|i| i == "" || i == " "}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  full?(board) || won?(board)
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  else
    nil
  end
end
