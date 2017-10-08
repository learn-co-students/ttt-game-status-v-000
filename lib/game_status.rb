# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #left col
  [1,4,7], #middle col
  [2,5,8], #right col
  [0,4,8], #l to r diagonal
  [2,4,6] #r to l diagonal
]

def won?(board)
  win = false
  WIN_COMBINATIONS.each do | win_combo |
    if (board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X") ||
      (board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O")
      win = win_combo
    end
  end
  return win
end

def full?(board)
  board.none? do | space |
    space == " " || space == "" || space == nil
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  else
    return nil
  end
end
