# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    win = combo.all? do |pos|
      board[pos] == "X"
    end
    if win
      return combo
    end
    win = combo.all? do |pos|
      board[pos] == "O"
    end
    if win
      return combo
    end
  end
  nil
end

def full?(board)
  full = board.all? do |spot|
    spot != " "
  end
  full
end

def draw?(board)
  if won?(board) != nil
    return false
  end
  if full?(board)
    return true
  else
    return false
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
  if won?(board) != nil
    board[won?(board)[0]]
  else
    nil
  end
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
  [0,3,6], # left column
  [1,4,7], # mid column
  [2,5,8], # right column
  [0,4,8], # diag 1
  [6,4,2] # diag 2
]

