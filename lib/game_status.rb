# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # Top Row
  [3, 4, 5], # Middle Row
  [6, 7, 8], # Bottom Row
  [0, 3, 6], # First Column
  [1, 4, 7], # Second Column
  [2, 5, 8], # Third Column
  [0, 4, 8], # Top Left Diagonal
  [2, 4, 6] # Top Right Diagonal
]
#won? method
def won?(board)
  WIN_COMBINATIONS.each do |combination|
     if (combination.all? {|position| board[position] == "X"}) || (combination.all? {|position| board[position] == "O"})
       return combination
     end
 end
 false
end

#full? method
def full?(board)
  board.all? {|spot| spot == "X" || spot == "O"}
end
#draw? method 
def draw?(board)
  if won?(board) == false && full?(board) == true
      true
   else
      false
   end
 end
#over? method
def over?(board)
  full?board || won?(board) || draw?(board)
end
#winner? method
def winner(board)
  return board[won?(board).first] if won?(board)
end