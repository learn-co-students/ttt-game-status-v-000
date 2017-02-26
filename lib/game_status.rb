# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
  [0,3,6], # first column
  [1,4,7], # second column
  [2,5,8], # third column
  [0,4,8], # left diagonal
  [2,4,6]  # right diagonal
]

def won?(board)
# iterate over WIN_COMBINATIONS using each or higher-level iterator
# to return correct board indexes that created the win
  WIN_COMBINATIONS.detect do |win_combo| # iterates and returns first aray that makes the block true
    board[win_combo[0]] == board[win_combo[1]] && board[win_combo[0]] == board[win_combo[2]] && position_taken?(board,win_combo[1])
  end # WIN_COMBINATIONS
end # won?

def full?(board)
  board.all? do |index|
    index == "X" || index == "O"
  end
end

def draw?(board)
  # returns true if the board has not been won and is full
  # returns false if board is not won and board is not full
  # returns false if the board is won
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end
