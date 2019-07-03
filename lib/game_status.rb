# Helper Method
require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
 # 1st Horizontal -Top Row  
  [0,1,2],
# 2nd Horizontal - Middle Row
  [3,4,5],
# 3rd Horizontal - Last Row
  [6,7,8],
# 1st Vertical   - 1st Coloumn
  [0,3,6],
# 2nd Verical    - 2nd Coloumn
  [1,4,7],
# 3rd Vertical   - 3rd Coloumn 
  [2,5,8],
# 1 Diagonal     
  [0,4,8],
# 2nd Diagonal  
  [6,4,2]]
  
  # def won?(board)
  
  #   WIN_COMBINATIONS.each do |win_arrays|
  #     win_arrays.all? do |win_index| 
  #       if win_index == "X" 
  #         win_array
  #       end
  #     end
  #   end
  
  #   if WIN_COMBINATIONS
  #     true
  #   else
  #     false
  #   end
  # end  


# def won?(board)
#   if board(won?) == true
#     WIN_COMBINATIONS.each do |win_index|
      
#       win_index_1 = WIN_COMBINATIONS[0]
#       win_index_2 = WIN_COMBINATIONS[1]
#       win_index_3 = WIN_COMBINATIONS[2]
#       win_index_4 = WIN_COMBINATIONS[3]
#       win_index_5 = WIN_COMBINATIONS[4]
#       win_index_6 = WIN_COMBINATIONS[5]
#       win_index_7 = WIN_COMBINATIONS[6]
#       win_index_8 = WIN_COMBINATIONS[7]
      
        
      
#       position_1 = board[win_index_1]
#       position_2 = board[win_index_2]
#       position_3 = board[win_index_3]
#   elsif board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
#     false
#   elsif board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"] 
#     false
#     end
#   end
  
  # def won?(board)
  #   WIN_COMBINATIONS.detect do |win_combo|
  #     binding.pry
  #     board[win_combo[0]] == board[win_combo[1]] &&  board[win_combo[1]] == board[win_combo[2]] &&  position_taken?(board, win_combo[0])
  #   end
  # end  
  
  def won?(board)
    #final_combo = nil
    WIN_COMBINATIONS.each do |win_combo|
      #binding.pry
      if board[win_combo[0]] == board[win_combo[1]] &&  board[win_combo[1]] == board[win_combo[2]] &&  position_taken?(board, win_combo[0])
        return win_combo
      end
    end
    false
  end
  
  def full?(board)
    # return true if every element in the board contains either an "X" or an "O"
    board.all? do |index| 
      if index == "X" || index == "O"
      true
      end
    end
  end  
  
  def draw?(board)
    # returns true if the board has not been won but is full, false if the board is not won and the board is not full, and false if the board is won
    if full?(board) && won?(board) == false
      true
    else
      false
    end 
  end
  
def over?(board)
    # returns true if the board has been won, is a draw, or is full.
    if won?(board) || full?(board)
      true
    elsif draw?(board)
      true
    else  
      false
    end  
end 
  
def winner(board)
  
  winning_combo = won?(board) 
  
  if winning_combo != false && winning_combo.all? {| i | board[i] == "X"}
    "X" 
  elsif winning_combo != false && winning_combo.all? {| i | board[i] == "O"}
     "O"
  else
    nil
  end 
end

  