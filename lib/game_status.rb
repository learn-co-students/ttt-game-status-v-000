# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,4,8], #top left to bottom right
  [2,4,6], #top right to bottom left
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8] #right column
]

def won?(board)
  WIN_COMBINATIONS.detect{|combo|
  board[combo[0]] == board[combo[1]] &&
  board[combo[1]] == board[combo[2]] &&
  position_taken?(board,combo[0])}
end

def full?(board)
  board.all?{|token| token == "X" || token == "O"}
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end

def over?(board)
  full?(board) || won?(board)
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end
