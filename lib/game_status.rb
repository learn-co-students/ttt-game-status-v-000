# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7],
[2,5,8], [2,4,6], [0,4,8]]

def won?(board)
    WIN_COMBINATIONS.each do |win_combos|
    win_index_1 = win_combos[0]
    win_index_2 = win_combos[1]
    win_index_3 = win_combos[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    if position_1 == "X" && position_2 == "X" && position_3 == "X" or  position_1 == "O" && position_2 == "O" && position_3 == "O"
      
     return win_combos
  
  end
end
  
  else false
  
end


def full?(board)
  
  if board.any?{|i| i == " "}
    return false
  
     else return true
   
 end
 end

def draw?(board)
  if full?(board) && !won?(board)
    return true
    
end 
end
  


def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  
 end 
end

def winner(board)
  if won?(board) != false
    board[won?(board)[0]]
 end 
end

