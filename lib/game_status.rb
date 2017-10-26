board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # Left diagonal
  [2,4,6]  # Right diagonal
]

def won?(board) # check a tic tac toe board and return true if there is a win and false if not
  WIN_COMBINATIONS.detect do |combo|
    position_1 = board[combo[0]]
    position_2 = board[combo[1]]
    position_3 = board[combo[2]]
    position_taken?(board, combo[0]) && (position_1 == position_2) && (position_2 == position_3)
  end
end

def full?(board)
  board.all? do |index|
    index == "X" || index == "O"
  end
end

def draw?(board)
# accepts a board and returns true if the board has not been won and is full and false if the board is not won and the board is not full,
# and false if the board is won. You should be able to compose this method solely using the methods you used above with some ruby logic.
  !won?(board) && full?(board)
end

def over?(board)
# Build a method `#over?` that accepts a board and returns true if the board has been won, is a draw, or is full. You should be able
# to compose this method solely using the methods you used above with some ruby logic.
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
# The `#winner` method should accept a board and return the token, "X" or "O" that has won the game given a winning board.
# The `#winner` method can be greatly simplified by using the methods and their return values you defined above.
  if winning_combo = won?(board)
    board[winning_combo[0]]
  end
end
