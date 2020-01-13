require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant - an array for each win combination
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # bottom row
  [0,3,6], # Left column
  [1,4,7],  # Middle column
  [2,5,8],  # Right column
  [2,4,6], # right diagonal
  [0,4,8] # left diagonal
]

#########
## NOTES
#########
#--------

#def win?(board)
def won?(board)
  WIN_COMBINATIONS.find do |combo|
    board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(board, combo[0])
  end
end
#end # =>if lose -  false/nil
     # => return the winning combination (array) if there is a win.

#def full?(board)
def full?(board)
  answer = true
  board.each do |token|
    if token != "X" && token != "O"
      answer = false
    end
  end
	answer
    # other solution - board.all?{|token| token == "X" || token == "O"}
end
#end # => (true) if board is full with either x or an o
    # => (false) if board is not full - some blank spaces not filled with o's or x's \\ board.include?("")

def draw?(board)
  (full?(board)) && !(won?(board))
end # => (true) if the board has not been won but is full
     # => (false) if the board is not won and the board is not full, and false if the board is won.

def over?(board)
  won?(board) || draw?(board) || full?(board)
end # (true) if the board has been won, is a draw, or is full

def winner(board)
if winning_combination = won?(board)
board[winning_combination[0]]
end
end # => the token, "X" or "O" - from the winning board
