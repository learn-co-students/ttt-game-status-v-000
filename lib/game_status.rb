# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    if board[win_combination[0]] == board[win_combination[1]] && board[win_combination[1]] == board[win_combination[2]] && position_taken?(board, win_combination[0])
      return win_combination 
      end
    end
    return false 
  end
  

def full?(board)
 if board.include?(" ")
   return false
 else
   return true
end
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  else
    return false
  end
end
  
def over?(board)
  if won?(board) || draw?(board) == true || full?(board) == true
    return true
  end
end

def winner(board)
  if won?(board)
  win_combination = won?(board)
  if board[win_combination[0]] == "X"
    return "X"
  elsif board[win_combination[0]] == "O"
    return "O"
end
end
end








    



 


      




  


  

    

  



  





# Define your WIN_COMBINATIONS constant
