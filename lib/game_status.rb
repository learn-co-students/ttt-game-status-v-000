# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def empty?(board)
 
  board.each do |entry|
    if entry != " "
      return false 
    end
  end
    return true 
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

# won? method code ###################################################################################

def won?(board)
    
    if empty?(board) == true
      return false 
    end
  
    WIN_COMBINATIONS.each do |win_combo|
    windex_1 = win_combo[0]
    windex_2 = win_combo[1]
    windex_3 = win_combo[2]
    
    position_1 = board[windex_1] 
    position_2 = board[windex_2] 
    position_3 = board[windex_3] 
    
      if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" &&   position_2 == "O" && position_3 == "O") 
        return win_combo
      end
    end 
  return false 
    
end

# full? method code #################################################################################

def full?(board)
  
   board.each do |entry|
      if entry == " "
       return false 
     end
    end
  return true 
  
end

# draw? method code #################################################################################

def draw?(board)
  
  if won?(board) == false && full?(board) == true 
    return true
  else 
    return false 
  end
end 

# over? method code #################################################################################

def over?(board)
  
  if full?(board) == true || draw?(board) == true || won?(board) != false
    return true 
  else
    return false 
  end
end 

# winner method code #################################################################################

def winner(board)
  
  if won?(board) != false  
    return board[won?(board)[0]]
  end
end
