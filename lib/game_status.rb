# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # Top row
  [3, 4, 5], # Middle row
  [6, 7, 8], # Bottom row
  [0, 3, 6], # Left column
  [1, 4, 7], # Middle column
  [2, 5, 8], # Right column
  [0, 4, 8], # Diagonal
  [2, 4, 6], # Diagonal
]
def won?(board)
WIN_COMBINATIONS.detect do |win_combinations|
board[win_combinations[0]] == "X" && board[win_combinations[1]] == "X" && board[win_combinations[2]] == "X" || board[win_combinations[0]] == "O" && board[win_combinations[1]] == "O" && board[win_combinations[2]] == "O"
###whydoesnthiswork position_taken?(board, win_combinations[0]) && position_taken?(board, win_combinations[1]) && position_taken?(board, win_combinations[2])
    end
  end

def full?(board)
#if board.none?{|player| player = " "}
if board.all?{|player| player == "X" || player == "O"}
true
else
  false
end
end
#def full?(board)
#  board.all? do |player|
#    player = "X" || player = "O"
# REMEMBER == not =
#  end

def draw?(board)
  if !won?(board) && full?(board)
    true
  else
    false
end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
end
end

def winner(board)
if win_combinations = won?(board)
  board[win_combinations[0]]
end
end
