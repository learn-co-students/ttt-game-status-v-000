# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row

  [0,3,6], #left horizontal column
  [1,4,7], #Middle horizontal column
  [2,5,8], #Right horizontal column

  [0,4,8], #left to bottom right diagonal
  [2,4,6] #right to bottom left diagonal

]


def won?(board)

   WIN_COMBINATIONS.detect do |array|
    if board[array[0]] == "X" && board[array[1]] == "X" && board[array[2]] == "X"
       return array

  elsif board[array[0]] == "O" && board[array[1]] == "O" && board[array[2]] == "O"
       return array
     else
       false
     end
   end
 end


 def full?(board)
   board.all? do |index|
     index != " "
   end
 end

 def draw?(board)
   if won?(board)
     false
   elsif full?(board)
     true
   end
 end

 def over?(board)
   if won?(board) || full?(board) || draw?(board)
     true
   else
     false
   end
 end

 def winner(board)

    if won?(board)
      winning_positions = won?(board)
      board[winning_positions[0]]
      board[winning_positions[1]]
      board[winning_positions[2]]
    else
      nil
   end
 end
