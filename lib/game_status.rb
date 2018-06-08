
require "pry"
# Helper Method
#board=[" ", " ", " ", " ", " ", " ", " ", " ", " "]
#index=8
def position_taken?(board, index)

  (board[index].nil? || board[index] == " ")

end
#binding.pry



# Define your WIN_COMBINATIONS constant

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
# what variable represents the board, and where does it come from?

=begin WIN_COMBINATIONS.reject do |u|
if position_taken?(board,u)
binding.pry
end

WIN_COMBINATIONS.detect do |element_array|
#binding.pry
  position_taken?(board, element_array)==true
end
=end
  WIN_COMBINATIONS.reject do |refuse_array|
     !position_taken?(board, refuse_array) && board[refuse_array] != " " && board[refuse_array] != nil
   end
binding.pry

  WIN_COMBINATIONS.select do |win_combination|
    # what is the condition that we want to match to return the win_combination array ?
    # 1. First postition must be takengh
    # 2. the second position must be the
    # 3. same as the first the same for the third
  position_taken?(board, win_combination) && win_combination[0] == win_combination[1] && win_combination[1] == win_combination[2]
  #position_taken?(board, win_combination[3]) && win_combination[3] == win_combination[4] && win_combination[4] == win_combination[5]
#binding.pry
  end



#binding.pry

#if board = nil && board = " "
#return false
#end

end
