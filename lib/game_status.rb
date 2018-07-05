# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row [0]
  [3,4,5], # Middle row [1]
  [6,7,8], # Bottom row
  [0,3,6], # First column
  [1,4,7], # Second column
  [2,5,8], # Third column
  [0,4,8], # Top Left diagonal
  [2,4,6] # Top Right diagonal [8]
]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end
end

def full?(board)
  board.all? do |letter|
    if letter == "X" || letter == "O"
      true
    else
      false
    end
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  else
    false
  end
end

def over?(board)
  if draw?(board)|| won?(board) || full?(board)
    true
  else
    false
  end
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first] #not sure how this works
  end
end
