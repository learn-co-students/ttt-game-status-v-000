require "pry"
# Helper Method
def position_taken?(board, index)

  !(board[index].nil? || board[index] == " ")

end


WIN_COMBINATIONS =
[[ 0, 1, 2 ], #top row
[ 3, 4, 5 ], #middle row
[ 6, 7, 8 ], #bottom row
[ 0, 3, 6 ], #first column
[ 1, 4, 7 ], #second column
[ 2, 5 , 8], #third column
[ 0, 4, 8 ], #first diagonal
[ 2, 4, 6 ] #second diagonal
]
# is there a method for arrays in ruby that returns the first element that matches a certain criterion?
def won?(board)
WIN_COMBINATIONS.detect do |win_combination|
# what is the condition that we want to match to return the win_combination array ?
# 1. First postition must be taken
# 2. the second position must be the
# 3. same as the first the same for the third
index_0 = win_combination[0]
index_1 = win_combination[1]
index_2 = win_combination[2]

position_1= board[index_0]
position_2= board[index_1]
position_3= board[index_2]

position_taken?(board, win_combination[0]) && position_1 == position_2 && position_2 == position_3
# what variable represents the board, and   does it come from?
end
end

def full?(board)
=begin
1. Must accept board as par of the methods' argument
2. return true if the board has all of its arrays occupied by eithe 'X' or 'O'
3. return false if has emtpy slots.
=end
board.none? do |i|
#binding.pry
  i == " "
end
end

def draw?(board)
=begin
1. accpets a board and returns true if the baord has not been won(that is
a full board)
2. false if the board is not won and board is not full
3. false if the board is won
=end
#binding.pry
=begin
if won?(board)==true&& full?(board) == false
    return false
elsif won?(board)!=false && full?(board) == false
  return false
elsif won?(board)!= false && full?(board) == true
  return true
end
=end
if won?(board) == nil && full?(board) == true
  return true
else return false
end
end

def over?(board)
=begin
1. returns true if thw board is won
                if there is a draw
                if it is full

=end
 if won?(board) != nil || draw?(board) == true || full?(board) == true
   return true
 else return false
 end
end

def winner (board)
=begin
1. accept board and return the token x or o given a winning board
2. the winner should be simplified by the methods above
=end
if draw?(board) !=true && over?(board) !=true
return nil
end


won?(board).detect do |winner|
winner= won?(board)
if board[winner[0]] == "X"
  return board[winner[0]]
elsif board[winner[0]] == "O"
  return board[winner[0]]
end
binding.pry
end
#binding.pry
end
