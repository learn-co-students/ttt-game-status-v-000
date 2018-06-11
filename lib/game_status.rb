require "pry"
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
  [2,4,6]
]
  #binding.pry
def won?(board)
  WIN_COMBINATIONS.detect do |mini|
  if  mini.all? { |space| board[space] == "X"}
    return mini
  elsif mini.all? { |space| board[space] == "O"}
    return mini
  end
  end
end

def full?(board)
  board.all? do |space|
    if space == " "
      false
    else
      true
    end
  end
end

def draw?(board)
  if full?(board)
    true
  end
  if won?(board)
    false
  else
    true
  end
end

def over?(board)
  if !full?(board) && !won?(board)
    false
  else
    true
  end
end

def winner(board)
  if wonder?(board) == "X"
    "X"
  elsif wonder?(board) == "O"
    "O"
  else
    nil
  end
end

    def wonder?(board)
      WIN_COMBINATIONS.detect do |mini|
      if  mini.all? { |space| board[space] == "X"}
        return "X"
      elsif mini.all? { |space| board[space] == "O"}
        return "O"
      end
    end
  end
