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
  WIN_COMBINATIONS.each do |combo|
    if combo.all? {|token| board[token] == "X"}
      return combo
    elsif combo.all? {|token| board[token] == "O"}
      return combo
    end
  end
  return false
end

def full?(board)
  if board.all? {|move| move == "X" || move == "O"}
    return true
  else
    return false
  end
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) != false || draw?(board) == true || full?(board) == true
    return true
  else
    return false
  end
end

def winner(board)
  combo = won?(board)
  if over?(board) == true && combo.all? {|token| board[token] == "X"}
    return "X"
  elsif over?(board) == true && combo.all? {|token| board[token] == "O"}
    return "O"
  else
    return nil
  end
end
