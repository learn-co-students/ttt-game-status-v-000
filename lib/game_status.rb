 require 'pry' 
 # Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
#remember commas after array
WIN_COMBINATIONS = 
[
[0,1,2], #0 top row
[3,4,5], #1 middle row
[6,7,8], #2 bottom row
[0,3,6], #3 left column
[1,4,7], #4 middle column
[2,5,8], #5 right column
[0,4,8], #6 left to right diagonal
[2,4,6], #7 right to left diagonal
]

# use detect method for efficiency.
# Summary here: http://stackoverflow.com/questions/2986852/ruby-detect-method
# pipes summary http://stackoverflow.com/questions/665576/what-are-those-pipe-symbols-for-in-ruby
def won?(board)
  WIN_COMBINATIONS.detect do |combinations|
    board[combinations[0]] == board[combinations[1]] &&
    board[combinations[1]] == board[combinations[2]] &&
    position_taken?(board, combinations[0])
  end
end

# pipes summary http://stackoverflow.com/questions/665576/what-are-those-pipe-sy
def full?(board)
  return true if (board.count("X") + board.count("O")) == board.count
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  full?(board) || won?(board)
end

def winner(board)
  winning = won?(board)
  if !winning
    return nil  
  elsif board[winning[0]] == "X"
    return "X"
  elsif board[winning[0]] == "O"
    return "O"
  end
end