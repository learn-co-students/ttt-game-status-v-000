# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #middle row
  [6, 7, 8], #bottom row
  [0, 3, 6], #left column
  [1, 4, 7], #middle column
  [2, 5, 8], #right column
  [0, 4, 8], #right diagonal
  [2, 4, 6] #left diagonal
]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end
end

def full?(board)
  board.all?{|moves| moves == "X" || moves == "O"}
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  end
end

def over?(board)
  if full?(board) && won?(board)
    true
  elsif draw?(board)
    true
  else
    false
  end
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  end
end
