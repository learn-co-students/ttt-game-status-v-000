require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], #top row win
  [3,4,5], #middle row win
  [6,7,8], #bottom row win 
  [0,3,6], #column 1 win
  [1,4,7], #middle column win
  [2,5,8], #column 3 win
  [0,4,8], #diagonal win 
  [2,4,6] #diagonal win
]

def won?(board)
 WIN_COMBINATIONS.detect do |array|
    board[array[0]] == board[array[1]] && 
    board[array[1]] == board[array[2]] &&
    position_taken?(board, array[0])
  end
end 

def full?(board)
  board.all? do |answer|
    answer != " " ? true : false
  end
end

def draw?(board)
  !won?(board) ? true : false 
end

def over?(board)
  won?(board) || draw?(board) && full?(board) ? true : false
end

def winner(board) 
 if a = won?(board) 
    board[a.first]
 end
end