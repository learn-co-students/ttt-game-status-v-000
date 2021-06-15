# Define your WIN_COMBINATIONS constant

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,4,8], #diagonal
  [2,4,6], #diagonal
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8] #right column
 ]

def won?(board)
  WIN_COMBINATIONS.each do |combos|
    if combos[0] && combos[1] && combos[2] == "X"
      return combos
    elsif combos[0] && combos[1] && combos[2] == "O"
      return combos
    else
      return false
    end
  end
end



