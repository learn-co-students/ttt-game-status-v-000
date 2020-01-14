# Define your WIN_COMBINATIONS constant
require "pry"

WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #top row
  [0,4,8], #diagonal
  [2,4,6], #diagonal
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8] #right column
 ]
 
# method we found when googling around 
# def same_values?  
#   self.uniq.length == 1
# end

def won?(board)
  i = 0
  while i < WIN_COMBINATIONS.length
    if WIN_COMBINATIONS[i][3] && WIN_COMBINATIONS[i][4] && WIN_COMBINATIONS[i][5] == "X"
    end
    i += 1
  end
  
  # WIN_COMBINATIONS.each do |combos|

  #   if combos[3] && combos[4] && combos[5] == "X"
  #     return nil
  #   elsif combos[0] && combos[1] && combos[2]  == "O"
  #     return combos
  #   else
  #     return false
  #   end

  # end
 
end
