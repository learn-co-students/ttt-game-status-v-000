require "pry"
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant


WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]
  
def won?(board)
  
  WIN_COMBINATIONS.find do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    
    position_1 = board[win_index_1] 
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    if position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    elsif position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    else
      FALSE
    end
  end
end



def full?(board)
  board.none? do |array|
    array == " " || array == ""
  end
end



def draw?(board)
  #binding.pry
  #if full?(board) == TRUE  && won?(board) == FALSE
  #TRUE
  #end
  full?(board) && !won?(board)
end
  
 # board.all? do |draw_board|
  #if draw_board != won?(board)
  #  TRUE
  #elsif draw_board != full?(board)
    #FALSE


    
    
def over?(board)
 won?(board) || full?(board) 
end
  
def winner(board)
 winning_combo = won?(board)
 if winning_combo 
   board[winning_combo[0]]
  end
end  

