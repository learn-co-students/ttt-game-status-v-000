# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Horizontal Top Row
  [3,4,5], # Horizontal Middle Row
  [6,7,8], # Horizontal Bottom Row
  [0,3,6], # Vertical Left Row
  [1,4,7], # Vertical Middle Row
  [2,5,8], # Vertical Right Row
  [0,4,8], # Backward Slash
  [2,4,6] # Forward Slash
]

def won?(board)
  if (board[0] == "X" && board[1] == "X" && board[2] == "X") || (board[0] == "O" && board[1] == "O" && board[2] == "O")
    return WIN_COMBINATIONS[0]
  elsif (board[3] == "X" && board[4] == "X" && board[5] == "X") || (board[3] == "O" && board[4] == "O" && board[5] == "O")
    return WIN_COMBINATIONS[1]
  elsif (board[6] == "X" && board[7] == "X" && board[8] == "X") || (board[6] == "O" && board[7] == "O" && board[8] == "O")
    return WIN_COMBINATIONS[2]
  elsif (board[0] == "X" && board[3] == "X" && board[6] == "X") || (board[0] == "O" && board[3] == "O" && board[6] == "O")
    return WIN_COMBINATIONS[3]
  elsif (board[1] == "X" && board[4] == "X" && board[7] == "X") || (board[1] == "O" && board[4] == "O" && board[7] == "O")
    return WIN_COMBINATIONS[4]
  elsif (board[2] == "X" && board[5] == "X" && board[8] == "X") || (board[2] == "O" && board[5] == "O" && board[8] == "O")
    return WIN_COMBINATIONS[5]
  elsif (board[0] == "X" && board[4] == "X" && board[8] == "X") || (board[0] == "O" && board[4] == "O" && board[8] == "O")
    return WIN_COMBINATIONS[6]
  elsif (board[2] == "X" && board[4] == "X" && board[6] == "X") || (board[2] == "O" && board[4] == "O" && board[6] == "O")
    return WIN_COMBINATIONS[7]
  else
    false
  end
end

def full?(board)
  if board.all?{|i| i == "X" || i == "O"}
    return true
  else
    return false
  end
end

def draw?(board)
  won = won?(board)
  full = full?(board)

  if won == false && full == true
    return true
  else
    return false
  end
end

def over?(board)
  #over = [won?(board), full?(board), !(full?(board))]
  #return over.any?{|i| i == true}

  won = won?(board)
  full = full?(board)
  draw = draw?(board)

  if !(full?(board)) && !(won?(board))
    return false
  elsif draw?(board) || full?(board) || !(full?(board))
    return true
  end
end

def winner(board)
  win_combination = won?(board)
  if win_combination == false
    return nil
  else
    return board[win_combination[0]]
  end
end
