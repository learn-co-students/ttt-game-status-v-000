
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ") # returns true or false based on whether that position on the board has been filled
end


  WIN_COMBINATIONS = [ #this multi-dimensional array is a data object that stores an ordered list of values
    [0,1,2], # Top row
    [3,4,5], # Middle row
    [6,7,8], # Middle row
    [0,3,6], # Left column
    [1,4,7], # Middle column
    [2,5,8], # Right column
    [0,4,8], # Diagnol left
    [6,4,2] # Diagnol right
    ]


def won?(board) # won? method accepts a board as an argument
  WIN_COMBINATIONS.detect do |w| # iterates over the possible win combinations defined in WIN_COMBINATIONS
  board[w[0]] == board[w[1]] && board[w[2]] == board[w[0]] && position_taken?(board, w[0]) # checks if the board has the same player token in each index of a winning combination
  end
end


def full?(board)
  board.all? do |b|
  b == "X" || b == "O" #returns true if every element in the board contains either an "X" or an "O"
  end
end


def draw?(board)
  full?(board) && !won?(board) # returns true if the board has not been won and is full, returns false if the board is not won and the board is not full, and returns false if the board is won.
end


def over?(board)
  full?(board) || draw?(board) || won?(board) # returns true if the board has been won, is a draw, or is full.
end


def winner(board)
  if b = won?(board)
    board[b.first]
  end
end
