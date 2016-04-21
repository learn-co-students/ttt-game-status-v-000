require 'pry'
# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
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
  WIN_COMBINATIONS.each do |win|
    position_1 = board[win[0]] # load the value of the board at win_index_1
    position_2 = board[win[1]] # load the value of the board at win_index_2
    position_3 = board[win[2]] # load the value of the board at win_index_3


    if board.all? do |spot|
      spot == "" || spot == " "
      end
      return false
    elsif(position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      return win
    else
     false
    end
  if full?(board)
    return false
  end
  end
end

def full?(board)
 board.all? do |number|
   number == "X" || number == "O"
  end
end

def draw?(board)
  binding.pry
  if  !won?(board) && full?(board)
    return true
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
  end
end
