# Helper Method

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
  [0,3,6], # first column
  [1,4,7], # middle column
  [2,5,8], #last column
  [0,4,8], #left top dia.
  [2,4,6]  #right top dia.
  ]
 
  def won?(board)
    # require 'pry' 
    WIN_COMBINATIONS.detect do |win_combination|
      win_index_1 = win_combination[0]
      win_index_2 = win_combination[1]
      win_index_3 = win_combination[2]
      
      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]
      
    
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
     win_combination
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
     win_combination
 end 
end
end


def full? (board)
  if board.detect {|p| p == " " || p == nil}
    return FALSE
  else
    return TRUE
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    return  TRUE
  else
    return FALSE
  end
end

def over?(board)
  if draw?(board) || won?(board)
    return TRUE
  else 
    return FALSE
end
end
# require 'pry'
def winner(board)
    if won?(board)
     board[won?(board)[0]]
  else !won?(board) 
    nil
end
end











