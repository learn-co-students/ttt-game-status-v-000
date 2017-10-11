require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]

]

def won?(board)
=begin this method should return false/nil if there is no win
 combination present in the board and return the winning
 combination indexes as an array if there is a win
=end
  WIN_COMBINATIONS.detect do |winning_combo|
    winning_combo.all? { |index| board[index] == "X" } ||
    winning_combo.all? { |index| board[index] == "O" }
  end
end

def full?(board)
# this method should return true if every element/index in the board contains either an "X" or an "O"
# check if every board[index] == "X" or board[index] = "O", return true
# is there an if every method? maybe .each?
  board.all? do |completed_game|
    completed_game.include?("X") || completed_game.include?("O")
  end
end

def draw?(board)
=begin
 returns true if the board has not been won and
 is full and false if the board is not won and the board is not full,
  and false if the board is won
  - you will probably call won?(board) to see if the board has been won/not won
  - you will probably call full?(board) to see if the board is full/not full
=end
!won?(board) && full?(board)
end

def over?(board)
#returns true if the board has been won, is a draw, or is ful
won?(board) || draw?(board) || full?(board)
end

def winner(board)
# return the token, "X" or "O" that has won the game given a winning board.
# if won?(board) && !draw(board)
if won?(board)
  combo = won?(board) #[0, 1, 2]
  board[combo[0]]
end

end
