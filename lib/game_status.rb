require "pry"
# Helper Method
def position_taken?(board, index)

  (board[index].nil? || board[index] == " ")

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
binding. pry
# what variable represents the board, and where does it come from?
empty_board=board

empty_board.all? do |empty_array|

  empty_array == " "
end
    if empty_board.all? == true
      return false
      end

# what variable represents the board, and where does it come from?
binding. pry
        WIN_COMBINATIONS.detect do |win_combination|
          # what is the condition that we want to match to return the win_combination array ?
          # 1. First postition must be taken
          # 2. the second position must be the
          # 3. same as the first the same for the third
          position_taken?(board, win_combination[0]) && win_combination[0] == win_combination[1] && win_combination[1] == win_combination[2]

end
end
