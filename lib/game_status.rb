require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top
  [3,4,5], #middle
  [6,7,8], #bottom
  [0,4,8], #left cross
  [2,4,6], #right cross
  [0,3,6], #left line
  [2,5,8], #right line
  [1,4,7] #center line
]

def won? (board)
  WIN_COMBINATIONS.find do | pattern |
    board[pattern[0]] == board[pattern[1]] && board[pattern[1]] == board[pattern[2]] &&
    position_taken?(board, pattern[0])
   end
end

def full? (board)
  board.all? do | position |
     position != " "
  end
end

def draw? (board)
   full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner (board)
  if win_result = won?(board)
     board[win_result[0]]
  end
end
