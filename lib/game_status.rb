
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

  board.reject do |refuse_array|

    #binding.pry

    #binding.pry

     if board[0] == "X" || board [0] == "O"
     refuse_array [0] = board [0]
   elsif  board[1] == "X" || board [1] == "O"
    refuse_array [1] = board [1]
  end


   end
return board




  WIN_COMBINATIONS.select do |win_combination|
    # what is the condition that we want to match to return the win_combination array ?
    # 1. First postition must be takengh
    # 2. the second position must be the
    # 3. same as the first the same for the third
  position_taken?(board, win_combination[0]) && board [win_combination[0]] == board [win_combination[1]] && board [win_combination[1]] == board [win_combination[2]]
  position_taken?(board, win_combination[3]) && board [win_combination[3]] == board [win_combination[4]] && board [win_combination[4]] == board [win_combination[5]]
  position_taken?(board, win_combination[6]) && board [win_combination[6]] == board [win_combination[7]] && board [win_combination[7]] == board [win_combination[8]]
  position_taken?(board, win_combination[0]) && board [win_combination[0]] == board [win_combination[3]] && board [win_combination[3]] == board [win_combination[6]]
  position_taken?(board, win_combination[1]) && board [win_combination[1]] == board [win_combination[4]] && board [win_combination[4]] == board [win_combination[7]]
  position_taken?(board, win_combination[2]) && board [win_combination[2]] == board [win_combination[5]] && board [win_combination[5]] == board [win_combination[8]]
  position_taken?(board, win_combination[0]) && board [win_combination[0]] == board [win_combination[4]] && board [win_combination[4]] == board [win_combination[8]]
  position_taken?(board, win_combination[2]) && board [win_combination[2]] == board [win_combination[4]] && board [win_combination[4]] == board [win_combination[6]]

#binding.pry
  end



  #position_taken?(board, win_combination[3]) && win_combination[3] == win_combination[4] && win_combination[4] == win_combination[5]


return board [win_combination]


#binding.pry

#if board = nil && board = " "
#return false
#end

end
