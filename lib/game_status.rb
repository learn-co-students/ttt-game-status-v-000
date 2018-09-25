require 'pry'
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

def input_to_index(user_input)
  user_input.to_i - 1
end

def won?(board)
   WIN_COMBINATIONS.detect do |win|
    board[win[0]] == "X" && board[win[1]] == "X" && board[win[2]] == "X" ||
    board[win[0]] == "O" && board[win[1]] == "O" && board[win[2]] == "O"
  end
end
#only had to tell the block what to do for the first Iterate, and then it knows to go through all of the array indexes

def full? (board)
  WIN_COMBINATIONS.all? do |full|
  if board[full[0]] == "X" && board[full[1]] == "X" && board[full[2]] == "X" &&
     board[full[0]] == "O" && board[full[1]] == "O" && board[full[2]] == "O"
    return true
  else
    return false
    end
  end
end

def draw? (board)
  if won?(board)
    return false
  else
    return true
  end
end

def over?(board)
  if won?(board) ||
    return true
  else
    return false
  end
end
