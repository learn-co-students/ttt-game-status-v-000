# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # Top row
  [3, 4, 5], # Middle row
  [6, 7, 8], # Bottom row
  [0, 3, 6], # First column
  [1, 4, 7], # Second column
  [2, 5, 8], # Third column
  [0, 4, 8], # Top left to bottom right diagonal
  [2, 4, 6] # Top right to bottom left diagonal
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    board[win_combo[0]] == board[win_combo[1]] && board[win_combo[1]] == board[win_combo[2]] && position_taken?(board, win_combo[0])
		end
end

def full?(board)
  board.all? do |space|
    space == "X" || space == "O"
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  if win_combo = won?(board)
    board[win_combo[0]]
  elsif win_combo =won?(board)
    board[win_combo[1]]
  else
    return nil
  end
end
