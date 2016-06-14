# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2], [3, 4, 5], [6, 7, 8],
  [0, 3, 6], [1, 4, 7], [2, 5, 8],
  [0, 4, 8], [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.any? do |cmb|
    if position_taken?(board, cmb[0]) && board[cmb[0]] == board[cmb[1]] && board[cmb[1]] == board[cmb[2]]
      return cmb
    end
  end
end

def full?(board)
  if board.all? {|pos| !(pos.nil? || pos == " ")}
    return true
  end
end

def draw?(board)
  if full?(board) && won?(board) == false
    return true
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  end
end

def winner(board)
  if won?(board)
    cmb = won?(board)
    return board[cmb[0]]
  else
    return nil
  end
end