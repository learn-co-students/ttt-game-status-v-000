# Helper Method
require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8], 
  [6, 4, 2],
  [1, 4, 7],
  [0, 3, 6],
  [2, 5, 8]
  ]

def won?(board)
    WIN_COMBINATIONS.each do |win_combination| 
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    if 
      position_1 == "X" && position_2 == "X" && position_3 == "X" || 
      position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    else
      false
    end
  end

def full?(board)
  board.all? do |full_board| 
  full_board == "X" || full_board == "O"
  end
end

def draw?(board)
  if
   !won?(board) && full?(board) 
   return true 
  elsif
   !won?(board) && !full?(board) ||
   won?(board)
   return false
  end
end


def over?(board)
  won?(board) || draw?(board) || full?(board)
  end
else 
  return false
end

def winner(board)
  board[won?(board)[0]]
  binding.pry
end
  



    

    

  



    
