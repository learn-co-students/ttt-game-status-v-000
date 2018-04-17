require "pry"
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # Left Top-down diagonal
  [6,4,2]  # Left Bottom-up diagonal
  ]
  
  def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
   # grab each index from the win_combination that composes a win
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]
  
  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3
  
   if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination # return the win_combination indexes that won.
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combination #how can line 30-32 be written without using the token??
    else
      false
  end
end
return false
end
 
 # return false for EMPTY board - line 35
 # return false for DRAW - line 38 --How does this one work?
 
 #full method. True=>draw, false=>in-progress
 
  def full?(board)
    !board.include? (" ")
  end 

#draw method. True=>draw, false=>game won 1st row, false=>game won diag, false=> in-Progress game

  def draw?(board)
full?(board) && !won?(board)
end 

 #over method. True =>draw, true =>won when full, true =>not full, false =>in-progress
 
 def over?(board)
  won?(board) || full?(board) || draw?(board)
  end
   
 #winner method
# def winner(board)
#won?(board).detect |board|
 #end
   
def winner(board)
 if winner = won?(board) #[0,1,2]
  board[winner[0]]
else
  nil
end
end
  

 
 
 
 
 
 