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

def won?(board)

  WIN_COMBINATIONS.each do |combos|
# binding.pry
    if combos[board[0]] == board[combos[1]] && board[combos[2]] == board[combos[1]]
      return false
    else
      return false
    end


  end
end