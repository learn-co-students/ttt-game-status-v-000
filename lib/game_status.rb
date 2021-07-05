# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

#WIN_COMBINATIONS

WIN_COMBINATIONS = [
  [0,1,2], #top row 
  [3,4,5], #middle row 
  [0,4,8], #top left to lower right diagonal 
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column
  [6,4,2], #bottom left to top right diagonal
  [6,7,8] #bottom row 
  
  ]
  
  #won?
  
def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
        board[combo[1]] == board[combo[2]] &&
        position_taken?(board, combo[1])
  end
end
    
#full?

def full?(board)
  board.all?{|played| played != " "}
end

#draw?

def draw?(board)
  full?(board) && !won?(board)
end 

#over?

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

#winner

def winner(board)
  if winner_array = won?(board)
    board[winner_array[0]]
  end
end