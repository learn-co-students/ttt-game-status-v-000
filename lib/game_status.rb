# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,4,8], [2,4,6], [0,3,6], [1,4,7], [2,5,8]]

def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    index_1 = win_combo[0]
    index_2 = win_combo[1]
    index_3 = win_combo[2]
    
    if position_taken?(board, index_1) && board[index_1] == board[index_2] && board[index_2] == board[index_3] 
      return win_combo
    end 
  end 
  false 
end

#Alternate version of above code (KEEP WORKING ON THIS REFACTOR!!!!)
#def won?(board)
#  WIN_COMBINATIONS.detect { |win_combo| position_taken?(board, win_combo[0]) == board[win_combo[1]] && board[win_combo[1]] == board[win_combo[2]]}
#end 

  


def full?(board)
  if board.include?(" ") || board.include?("")
    return false 
  
  else 
    return true 
  end
end 


def draw?(board)
  if !won?(board) && full?(board)
    return true 
  end 
end 


def over?(board)
  if won?(board) || full?(board) || draw?(board) 
    return true 
  end 
end 


def winner(board)
  winner = nil 
  WIN_COMBINATIONS.each do |token|
    if token.all? {|index| board[index] == "X"}
      winner = "X"
      
    elsif token.all? {|index| board[index] == "O"}
      winner = "O"
    end 
  end 
  winner 
end 


#if !won?(board) 
#    return nil 
    
#  elsif won?(board)
#    return "X"

#board.detect { |win_combo| win_combo == "X" || win_combo == "O"}
