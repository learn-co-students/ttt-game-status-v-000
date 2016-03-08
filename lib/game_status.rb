# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0, 1, 2],
[3, 4, 5],
[6, 7, 8],
[0, 3, 6],
[1, 4, 7],
[2, 5, 8],
[0, 4, 8],
[2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.each do |combination|
     if (combination.all? {|index| board[index] == "X"}) || (combination.all? {|index| board[index] == "O"})
       return combination
     end
 end
 false
end

def full?(board)
   if board.all? do |value|
     value == "X" || value == "O"
     end
      true
   else
      false
   end
end

def draw? (board)
   if won?(board) == false && full?(board) == true
      true
   else
      false
   end
 end
 
 def over?(board)
   full?board || won?(board) || draw?(board)
 end
 
 def winner(board)
   return board[won?(board).first] if won?(board)
 end