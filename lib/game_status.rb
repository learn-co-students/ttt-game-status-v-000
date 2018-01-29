# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
   [0,1,2],[3,4,5],[6,7,8],
   [0,3,6],[1,4,7],[2,5,8],
   [0,4,8],[2,4,6]
 ]
 def won?(board)
   WIN_COMBINATIONS.each do|win_array|
     win_position_x = win_array.all? do|index|
       board[index] == "X" # identifying the X win
     end
     win_position_o = win_array.all? do|index|
       board[index] == "O" # identifying the O win
     end
     if win_position_x || win_position_o
       return win_array
     end
   end
   false
 end

 def full?(board)
   board.none? do|index|
     index == " " || index == nil
   end
 end

 def draw?(board)
   if full?(board) && !won?(board)
     true
   elsif won?(board)
     false
   end
 end

 def over?(board)
   if won?(board) || draw?(board) || full?(board)
     true
   end
 end

 def winner(board)
   if !won?(board)
     return nil
   end
     board[won?(board)[0]]
 end
