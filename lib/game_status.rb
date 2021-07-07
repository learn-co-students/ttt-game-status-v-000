# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS=
[[0,1,2], [3,4,5], [6,7,8,], #Horizontal Wins
[0,3,6], [1,4,7], [2,5,8], #Vertical Wins
[0,4,8], [6,4,2]] #Diagonal Wins

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
#Searches for if the X player won the game
     if position_1 == "X" && position_2 == "X" && position_3 == "X"
       return win_combination
#Searches for if O player won the game
     elsif position_1 == "O" && position_2 == "O" && position_3  == "O"
       return win_combination
#If neither X nor O won the game board is either empty full or still in progress
     else
       false
     end
   end
end
#Describes if our board is full
def full?(board)
  #If there is a blank space in the board array are board is not full (False) else are board is full
  if board.detect {|square| square == " " || square == nil}
    return false
  else
    return true
  end
end
#Describes method to determine if game is a draw
def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end
#Method to determine if game is over
def over?(board)
  if won?(board) || draw?(board)
    return true
  else
    return false
  end
end
#method to define winnner
def winner(board)
  if win_combination = won?(board)
    board[win_combination.first]
  end
end
