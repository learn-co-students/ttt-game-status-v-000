# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [

[0,1,2], # top row
[3,4,5], # middle row
[6,7,8], # bottom row

[0,3,6], # left column
[1,4,7], # middle column
[2,5,8], # right column

[0,4,8], # diagonal left
[2,4,6] # diagonalright
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combos|
    board[win_combos[0]] == board[win_combos[1]] &&
    board[win_combos[1]] == board[win_combos[2]] &&
    position_taken?(board, win_combos[0])
  end
end

def full?(board) 
board.all? do |position| 
  position == "X" || position == "O"
end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
won?(board) || full?(board)
end

def winner(board)
if win_combos = won?(board)
  board[win_combos.first]
end
end
