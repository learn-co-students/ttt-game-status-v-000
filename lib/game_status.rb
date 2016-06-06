# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
WIN_COMBINATIONS = [
[0, 1, 2], [3, 4, 5], [6, 7, 8], 
[0, 3, 6], [1, 4, 7], [2, 5, 8], 
[0, 4, 8], [2, 4, 6]
]
def won?(board)
  WIN_COMBINATIONS.detect do |win_index|
    index_1 = win_index[0] 
    index_2 = win_index[1] 
    index_3 = win_index[2]
   if (board[index_1] == "X" && board[index_2] == "X" && board[index_3] == "X") || (board[index_1] == "O" && board[index_2] == "O" && board[index_3] == "O") 
   return win_index
   else false
   end
  end
end

def full?(board)
  board.all?  do |i|
  i == "X" || i == "O"
  end
end

def draw?(board)
  if won?(board)
    false
  elsif 
    full?(board)
    true
  else
    false
  end 
end

def over?(board)
  if !full?(board)
    false
  else
    true
  end
end

def winner(board)
  win_index = won?(board)
  if win_index == nil
  return nil
  else board[win_index[0]] == "X" || board[win_index[0]] == "O"
  return board[win_index[0]]
  end
end









    

   
 


