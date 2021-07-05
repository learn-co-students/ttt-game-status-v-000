require "pry"
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
 WIN_COMBINATIONS.each do |win|
   if board[win[0]] == board[win[1]] && board[win[2]] == board[win[0]] && position_taken?(board, win[0])
    #  binding.pry
     return win
   end
 end
 return false
end

def full?(board)
  board.none? do |i|
    i == " "
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  elsif !full?(board) && !won?(board)
    false
  else
    false
  end
end

def over?(board)
  if  full?(board) && !won?(board)
    true
  elsif won?(board)
    true
  end
end

def winner(board)
  if  win = won?(board)
    board[win[0]]
  end
end

WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle
  [6,7,8], #bottom
  [0,3,6], #left
  [1,4,7], # middle
  [2,5,8], #right
  [0,4,8], #diagonal
  [2,4,6]  #diagonal
]
