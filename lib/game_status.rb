# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def won?(board)
  win = WIN_COMBINATIONS.detect do |combo|
    combo.all? {|c| position_taken?(board, c) && board[c] == board[combo[0]] }
  end
  if win && win.size > 0
    return win
  end
  return false
end


def full?(board)
  #Why am I so proud of myself for making it recursive..? lol
  if board.size == 0
    return true
  elsif !position_taken?(board,0)
    return false
  else
    board.shift
    full?(board)
  end
end


def draw?(board)
  return !won?(board) && full?(board)
end

def over?(board)
  return full?(board)
end

def winner(board)
  if !won?(board)
    return nil
  end
  return board[won?(board)[0]]
end
