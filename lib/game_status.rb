require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


#WIN_COMBINATIONS constant

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

#Methods
def won?(board)
  WIN_COMBINATIONS.detect do |win_index|
    board[win_index[0]] == board[win_index[1]] && board[win_index[1]] == board[win_index[2]] && position_taken?(board, win_index[0])
  end
end

def full?(board)
  board.all? do |board_index|
    board_index == "X" || board_index == "O"
  end
end

def draw?(board)
  if won?(board)==nil && full?(board) == true
    return true
  end
end

def over?(board)
  #binding.pry
  if full?(board) == true && draw?(board)== true || won?(board) != nil
    return true
  end
end

def winner(board)
  if won?(board) == WIN_COMBINATIONS[] && WIN_COMBINATIONS[]=="X"
    return "X"
  else return "O"
    end
  end
