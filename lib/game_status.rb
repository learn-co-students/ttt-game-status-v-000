require 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant


WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6], 
  [2,5,8],
  [1,4,7]
]


def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X"
     return combo
    elsif board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
     return combo 
    end 
  end 
    return FALSE
end

def full?(board)
  if board.include?(" ")
    FALSE
  else
    TRUE
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    TRUE
  else
    FALSE
  end
end

def over?(board)
  if (won?(board) || draw?(board) || full?(board))
    TRUE
  else
    FALSE
  end
end

def winner(board)
 if won?(board) 
  return board[won?(board)[0]]
else
  nil 
end
end








