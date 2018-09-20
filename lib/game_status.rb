require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column
  [0,4,8], #diagonal 1
  [2,4,6], #diagonal 2
  ]

  def won?(board)
    WIN_COMBINATIONS.detect do |combo|
      board[combo[0]] == board[combo[1]] && board[combo[2]] == board[combo[0]] && position_taken?(board,combo[0])
    end
  end

  def full?(board)
    board.all? do |positions|
      positions == "X" || positions == "O"
    end
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
 if won?(board)
   combo = won?(board)
   board[combo[0]]

   #elsif won?(board["O"])
   #{}"O"
 else
   nil
 end
end
