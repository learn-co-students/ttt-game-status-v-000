# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column                           board = ['','','','','','','','','']
  [0,4,8], # Left diagonal
  [2,4,6]  # Right diagonal
]

def won?(board)  #defining the method won? and passing the argument board
  WIN_COMBINATIONS.detect do |match_array|
    position_taken?(board, match_array[0]) &&
    board[match_array[0]] == board[match_array[1]] &&  #the value in the first index and the second index are the same value and
    board[match_array[1]] == board[match_array[2]]     #the value in the second index and the third index are the same value
    # each time the top row, [0,1,2] all have "Xs" or all have "Os", then it is a won? = true
  end
end

def full?(board)  #if all the positions on the board has a value, then the board is full.
board.all?{|i| i=="X" || i=="O"} #using the iterator #all? to check that ALL the indexes on the BOARD has a value of either "X" or "O"
end

def draw?(board)
  !won?(board) && full?(board) #returns true if the board has not been won and if the board is full
        #anything else returned is false
end

def over?(board)
  won?(board) || draw?(board) || full?(board)  # returs true if the board has been won or if there is a draw or if the board is full.
end

# def winner(board)  #accept a board and return the token "X" or "O" that has won the game giving the winning board.
#   board[won?(board)[0]]
#   
# end
def winner(board)

  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end
# board[variable.first]
# variable == won?(board)
