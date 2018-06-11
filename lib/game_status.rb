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
# what variable represents the board, and where does it come from?
# what variable represents the board, and where does it come from?
#empty_board.all? do |empty_array|
#empty_array == " "
#end
#if empty_board.all? == true
#return false
#end


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


end
end
