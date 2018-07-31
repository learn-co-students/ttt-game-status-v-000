# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1 ,2], #top row [0]
  [3, 4, 5], #middle row [1]
  [6, 7, 8], #bottom row [2]
  [0, 3, 6], #left column [3]
  [1, 4, 7], #middle column [4]
  [2, 5, 8], #right column [5]
  [0, 4, 8], #left diagonal [6]
  [2, 4, 6]  #right diagonal [7]
  ] 

def won?(board)
 WIN_COMBINATIONS.each do |win_combination|
   win_index_1 = win_combination[0]
   win_index_2 = win_combination[1]
   win_index_3 = win_combination[2]
   
   position_1 = board[win_index_1]
   position_2 = board[win_index_2]
   position_3 = board[win_index_3]
   
   if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
   end
   
 end
else 
  false
end

def full?(board)
  board.all? do |filled|
  filled == "X" || filled == "O"
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  else
    return false
  end
end

def over?(board)
  if draw?(board) || won?(board)
    return true
  else
    return false
  end
end

def winner(board)
 if win_combination = won?(board)
   board[win_combination.first]
 end
end