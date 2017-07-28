# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant. This is a nested array where each array element represents a possible winning combination ie an X or O will be
# present in each of the positions within that array ie WIN_COMBINATIONS[0] contains the array [0,1,2] which represents a "win" across the top row of the board.
WIN_COMBINATIONS=[
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # Left diagonal
  [6,4,2] # Right diagonal
  ]

#Define #won? method to see if any of the WIN_COMBINATIONS array elements have the same character in each individual array using .detect and do to iterate through the array
#ie WC[0] is the array [0,1,2] element 0 (0) is checked against element 1 (1) and element 1 (1) is checked against element 2 (2). This continues to array [6,4,2] Using #detect means
#The result is an array that meets the criteria being checked for (ie array [6,4,2] means the win is a Right diagonal win)

def won?(board)
    WIN_COMBINATIONS.detect do |winarr|
      board[winarr[0]] == board[winarr[1]] &&
      board[winarr[1]] == board[winarr[2]] &&
      position_taken?(board, winarr[0]) # Check to make sure that if the elements that match within an array are not " " or nil
    end
  end


  def full?(board)
    board.all? {|chip| chip == "X" || chip == "O"} # .all acts on board. It cycles through then entire board array assigning each
    #element to the variable chip, then tests to see if chip is an X or an O. If this condition is met then the result of .all is TRUE meaning all elements in the board
    #are filled with either an "X" or an "O"
  end

def draw? (board)
  #check to see if the #full? method found the board to be full (ie is it TRUE)AND tests to see if #won?(board)is NOT true (use the ! to indicate NOT)
  full?(board) && !won?(board)
end

def over? (board)
  # Check to see if the board #full? found the board to be full OR #won found the board has 1 array with a winning combination in one of the rows, columns, or diags
  won?(board)|| full?(board)
end

def winner (board)# Assigns a variable to the result (True or false) of won? which is an array with the winning combo of X's or Ys.
  #Then tests if it's true and checks for the first element int the array for X or Y to determine who won
  if who_won=won?(board)
    board[who_won.first]
  end
end
