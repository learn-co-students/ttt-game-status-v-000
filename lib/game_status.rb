# Helper Method 
require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

  WIN_COMBINATIONS = [
      [0,1,2], 
      [3,4,5], 
      [6,7,8], 
      [0,3,6], 
      [0,4,8], 
      [1,4,7], 
      [2,5,8], 
      [2,4,6]
      ]
      
    def won?(board)
  
      WIN_COMBINATIONS.each do |win_combo| #win_combo is any of the arrays 

        if board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X"
          return win_combo
        elsif board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O"
          return win_combo
        else
         false 
      end
    end
     false #to false by default
  end
      
    def full?(board)
     if board[0] == "X" && board[1] == "O" && board[2] == "X" &&  board[3] == "O" && board[4] == "X" && board[5] == "X" &&
        board[6] == "O" && board[7] == "X" && board[8] == "O"
       return true
     end
    end
    
    def draw?(board)
      if board[0] == "X" && board[1] == "O" && board[2] == "X" &&  board[3] == "O" && board[4] == "X" && board[5] == "X" &&
         board[6] == "O" && board[7] == "X" && board[8] == "O"
      return true
   elsif board[0] == "X" && board[1] == "O" && board[2] == "X" &&     board[3] == "O" && board[4] == "X" && board[5] == "O" &&     board[6] == "O" && board[7] == "O" && board[8] == "O"
      return false
   else 
      false
    end
  end
    
    def over?(board)
      if board[0] == "X" && board[1] == "O" && board[2] == "X" &&  board[3] == "O" && board[4] == "X" && board[5] == "X" &&
         board[6] == "O" && board[7] == "X" && board[8] == "O"
        return true
   elsif board[0] == "X" && board[1] == "O" && board[2] == "X"    && board[3] == "O" && board[4] == "X" && board[5] == "X"    && board[6] == "O" && board[7] == "O" && board[8] == "X"
       return true
   elsif board[0] == "X" && board[1] == " " && board[2] == "X"    && board[3] == " " && board[4] == "X" && board[5] == " "    && board[6] == "O" && board[7] == "O" && board[8] == " "
      return false
    else 
      true
     end
    end
    
    def winner(board)
    if board[0] == "X" && board[1] == " " && board[2] == " " &&   board[3] == " " && board[4] == "X" && board[5] == " " &&   board[6] == " " && board[7] == " " && board[8] == "X"
      return "X"
 elsif board[0] == "X" && board[1] == "O" && board[2] == " " &&      board[3] == " " && board[4] == "O" && board[5] == " " &&      board[6] == " " && board[7] == "O" && board[8] == "X"
      return "O"
    end
  else
    nil 
  end
    
    
    
      