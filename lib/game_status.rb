# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  WIN_COMBINATIONS.detect do |combination|
    if combination.all? {|i| board[i] == "X"}
        return combination
    elsif combination.all? {|i| board[i] == "O"}
        return combination
    end
  end
end

def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end

def draw?(board)
  #method accepts a board and returns true if the board has not been won and is full
  #and false if the board is not won and the board is not full
  #and false if the board is won.
  won?(board) == nil && full?(board) == true
end

def over?(board)
  # method accepts a board and returns true if the board has been won, is a draw, or is full
  won?(board) != nil || draw?(board) == true || full?(board) == true
end

def winner(board)
  #method should accept a board and return the token, "X" or "O" that has won the game given a winning board.
  if won?(board) != nil
    board[won?(board)[0]]
end
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # First column
  [1,4,7],  # Second column
  [2,5,8],  # Third column
  [0,4,8],  # diagonal 1
  [2,4,6]  # diagonal 2
  #an array for each win combination
]
