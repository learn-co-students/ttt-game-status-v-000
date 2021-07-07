# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
  
WIN_COMBINATIONS = [
  [0,1,2], #top row 
  [3,4,5], #middle row 
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
  ]


#board with top_row win
board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
#top_row_win = [0,1,2]

#win_index_1 = win_combination[0]
#win_index_2 = win_combination[1]
#win_index_3 = win_combination[2]

#position_1 = board[win_index_1]
#position_2 = board[win_index_2]
#position_3 = board[win_index_3]

#if position_1 == "X" && position_2 == "X" && position_3 == "X"
  #return win_combination
#else
  #false 
  
  
def won?(board)
  WIN_COMBINATIONS.each do |win_group|
   if win_group.all? {|win_index| board[win_index] == "X"}
    return win_group
   elsif  win_group.all? {|win_index| board[win_index] == "O"}
    return win_group
   else 
     false 
   end 
  end  
!WIN_COMBINATIONS.each do |win_group|
  return false 
end 
end 

def full?(board)
 if board.all? {|idx| idx == "X" || idx == "O"}
   return true 
 else
   return false 
  end 
end   

def draw?(board)
  if !won?(board) && full?(board)
    return true 
  elsif !won?(board) && !full?(board)
    return false 
  else won?(board)
    return false 
  end 
end   
 
def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true 
  else 
    return false 
  end 
end   
   
def winner(board)
  WIN_COMBINATIONS.each do |win_group|
    if win_group.all? {|win_index| board[win_index] == "X"}
      return "X"
    elsif win_group.all? {|win_index| board[win_index] == "O"}
      return "O"
    else
       nil 
    end
  end
  nil #by putting it after the .each iteration, it means that the program only reaches that line of code if it hasn't returned an X or an O earlier
end   
      
  
  
 
    
    
 
 
 
 
  