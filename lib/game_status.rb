WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #middle row
  [6, 7, 8], #bottom row
  [0, 3, 6], #left columns
  [1, 4, 7], #middle columns
  [2, 5, 8], #right columns
  [0, 4, 8], #diagonal 1
  [2, 4, 6] #diagonal 2
]
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end
end

def full?(board)
  board.all? do |space|
    space == "X" ||
    space == "O"
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else return false
  end
end

def over?(board)
  if won?(board) ||
    draw?(board) ||
    full?(board)
    return true
  else return false
  end
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo[0]]    
  else
  end
end
