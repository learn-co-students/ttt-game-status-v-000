# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win|
    windex_1 = win[0]
    windex_2 = win[1]
    windex_3 = win[2]
    position_1 = board[windex_1]
    position_2 = board[windex_2]
    position_3 = board[windex_3]
    if (position_1 == "X" && position_2 == "X" && position_3 == "X")
      return win
    elsif (position_1 == "O" && position_2 == "O" && position_3 == "O")
      return win
    end
  end
  return false
end

def full?(board)
  if board.detect {|i| i == " " || i == nil}
    return false
  else
    return true
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  elsif full?(board) == false && won?(board) == false
    return false
  elsif won?(board) == true
    return false
  end
end

def over?(board)
  if won?(board) == true || draw?(board) == true || full?(board) == true
    return true
  end
end

def winner(board)
  if win = won?(board)
    return board[win.first]
  end
end
