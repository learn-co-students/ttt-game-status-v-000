# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #middle row
  [6, 7, 8], #bottom row
  [0, 3, 6], #left vertical
  [1, 4, 7], #middle vertical
  [2, 5, 8], #right vertical
  [0, 4, 8], #left diagonal
  [2, 4, 6]  #right diagonal
]

def won?(board)
  WIN_COMBINATIONS.find do |array|
    board[array[0]] == board[array[1]] && board[array[1]] == board[array[2]] && position_taken?(board, array[0])
  end
end

def full?(board)
  board.all? do |square|
    square == "X" || square == "O"
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  end
end

def winner(board)
  if winning_combo = won?(board)
  board[winning_combo[2]]
  end
end
