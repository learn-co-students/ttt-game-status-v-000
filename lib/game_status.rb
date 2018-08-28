require 'pry'
# Helper Method
def full?(board)
   board.all? {|b| b != " " }
 
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

 WIN_COMBINATIONS =  [
   [0,1,2], [3,4,5],[6,7,8],
   [0,3,6], [1,4,7], [2,5,8],
   [0,4,8], [2,4,6]
   ]
  
  
# if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" &&  board[top_row_win[2]] == "X"
#   "X won in the top row"
# top_row_win = [0,1,2]

# end



#end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || won?(board) 
end

def won?(board)
  #for each win_combination in WIN_COMBINATIONS
  WIN_COMBINATIONS.each do |win_combination|
    
  
    # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
    # grab each index from the win_combination that composes a win.
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
   
    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3
   
    if position_1 == "X" && position_2 == "X" && position_3 == "X" 
      return win_combination 
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O" 
      return win_combination
    else
      false
    end
  end
  false
end

def winner(board)
  winning_array = won?(board) #Setting winning_array to equal results from won?(board)
  if won?(board) # Implicit return of boolean -> if true return which character won
    return board[winning_array[0]] #
  else
    return nil
  end
end