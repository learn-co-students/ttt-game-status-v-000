require 'pry'
# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Right row
  [1,4,7], # Left row
  [2,5,8], # Left row
  [0,4,8], # Right diagonal
  [2,4,6] # Left diagonal
]

# X | X | X
# board=["X","X","X"," "," "," "," "," "," "]
# board=["O","X","O"," "," "," "," "," "," "]
def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    board1 = win_combination[0]
    board2 = win_combination[1]
    board3 = win_combination[2]

   board[board1] == board[board2] && board[board2] == board[board3] && board[board2] != " "
  end
end

# def full?(board)
#
# end
