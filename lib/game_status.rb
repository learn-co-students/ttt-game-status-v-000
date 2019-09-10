require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def won?(board)
 WIN_COMBINATIONS.each do |combo|
  if board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && board[combo[0]] != " " && board[combo[0]] != ""
  return combo
   end
  end
  false
end
    
 # Full
def full?(board)
board.all? do |spots|
  spots == "X" || spots == "O"
 end
   end

# Draw

def draw?(board)
   won?(board) == false && full?(board) == true 
end 

# Over 
def over?(board) 
    #if draw?(board) == true 
     #true
      #end
      if full?(board) == true || won?(board) != false
        true
      end
 end


# Winner
def winner(board)
  combo = won?(board)
  #binding.pry
  if won?(board) != false && board[combo[0]] == "X"
   return "X"
  end
  if won?(board) != false &&  board[combo[0]] == "O"
   return "O"
  else 
    return nil
  end
    
end
    
    
    

    



