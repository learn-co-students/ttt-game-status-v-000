require 'pry'
# This file has game status controls to keep track of moves
# And define winning combinations.

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define WIN_COMBINATIONS constant with all possible combinations
WIN_COMBINATIONS = [
  [0,1,2], # Top row win
  [3,4,5], # Middle row win
  [6,7,8], # Bottom row win
  [0,3,6], # Vertical left win
  [1,4,7], # Vertical middle win
  [2,5,8], # Vertical right win
  [0,4,8], # Diagonal win
  [6,4,2] # Diagonal win
]

# Won Method accepts one argument of the Board
# And returns falsey for empty board or draw
# And returns array of matching indexes for wins
def won?(board)
   WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] && 
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
   end
end
#binding.pry

# full method returns true for a draw
# And False for an In-Progress Game
def full?(board)
  board.each do |fullBoard|
    return false if fullBoard.include? " "
  end
   return true
end


# Draw Method returns:
# -True for a draw
# -False for game won in First Row, Diagonaly,or In-Progress game
def draw?(board)
   #binding.pry
  if full?(board) && !won?(board) 
    return true
  else 
    return false
   end 
  end

# Over Method returns:
# -True for a draw, won game on full board, won game not full board
# -False for In-Progress game
def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  else false 
  end
end

# Winner Method returs:
# -"X" when X has won
# -"O" when O has won
# -nil when no winner
def winner(board)
  # using Won? method
  win = won?(board)
  if won?(board)
     board[win[0]]
      end
  end
#binding.pry