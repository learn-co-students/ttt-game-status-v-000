require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[
  [0,1,2],#Top
  [3,4,5],#Middle
  [6,7,8],#Bottom
  [0,3,6],#Left
  [1,4,7],#Middle
  [2,5,8],#Right
  [0,4,8],#Diagonal
  [2,4,6]]#Diagonal

def won?(board)
  WIN_COMBINATIONS.detect do |win|
    board[win[0]] == board[win[1]] && board[win[1]] ==  board[win[2]] && position_taken?(board,win[0])
  end
end

def full?(board)
 board.all? do |number|
   number == "X" || number == "O"
  end
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
   if won?(board)
    board[won?(board)[0]]
  end
end
