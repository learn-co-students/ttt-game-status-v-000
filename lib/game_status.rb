# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top_row_win
  [3,4,5], #middle_row_win
  [6,7,8], #bottom_row_win
  [0,3,6], #first_column_win
  [1,4,7], #second_column_win
  [2,5,8], #last_column_win
  [0,4,8], #down_diagonal_win
  [2,4,6] #up_diagonal_win
]


#detect returns the first for which the block is true
#ALL of the following conditions must be true
# 1. value at board position [winning index 0] == the same at board[winning index 1]
#2. value at board position [winning index 1] == the same at board[winning index 2]
# the position at the first winning index IS taken (NOT EMPTY)

def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    board[win_combo[0]] == board[win_combo[1]] &&
    board[win_combo[1]] == board[win_combo[2]] &&
    position_taken?(board, win_combo[0])
  end
end



#my original solution. sets a default value outside of the if scope. so
#that if the if condition is never met, we method will still return the
#default value we need it to.
#the detect method is more intuitive since it's default return value is true or false.
#whereas the return value of each is the original array

#def won?(board)
#  winning = false
#  WIN_COMBINATIONS.each do |win_combination|
#    win_index_1 = win_combination[0]  #assigning variables to use the wininng index variable later
#    win_index_2 = win_combination[1]
#    win_index_3 = win_combination[2]

#    position_1 = board[win_index_1]  #evaluates the value of board at board[1] for example. could be X or O or nil
#    position_2 = board[win_index_2]
#    position_3 = board[win_index_3]

#    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
#      winning = win_combination
#    end
#  end
#return winning
#end




def full?(board)
  board.all? {|value| value == "X" || value == "O"}
end

#original answer. This is way too long and convuluted
#def draw?(board)
#  draw = false
#  if (won?(board) == false)
#    if (full?(board) == true)
#      draw = true
#    end
#  end
#end

#the formal solution relies only on a single comparative line of logic
def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board)
end


#my solution first ensures that the return of won?(board) ISN"T nil.
#we can also account for this with a simplified if statement and the first method
#first returns the first element or the first n elements of the array.
#KEY-- if the array is empty, the first form returns nil
#example
#a = ["q", "r", "s", "t"]
#a.first #=> "q"
#a.first(2) #=> ["q", "r"]

#def winner(board)
#  if won?(board) != false
#    win_combination = won?(board)
#    return board[win_combination[0]]
#  end
#end

def winner(board)
  if win_combo = won?(board)
    board[win_combo.first] #goes into array win_combination[0,1,2] and
    #returns the board value at the first winning indice. aka goes into board[0--or whatever the first winning indices]
  end
end
