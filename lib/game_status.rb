# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    ttt = []
    combo.each do |x|
      ttt << board[x]
    end
    return combo if ttt.uniq.length == 1 && !ttt.any?(" ")
  end
  return false
end

def full?(board)
  if board.any?(" ")
    return false
  else
    return true
  end
end

def draw?(board)
  if !!won?(board) || board.any?(" ")
    return false
  else
    return true
  end
end

def over?(board)
  if !!won?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if !!won?(board)
    win = won?(board)
    return board[win[0]]
  else
    return nil
  end
end
