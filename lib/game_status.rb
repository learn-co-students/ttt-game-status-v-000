require 'pry'
# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # bottom row
  [0,3,6],  # left column
  [1,4,7],  # Middle column
  [2,5,8],  # right column
  [0,4,8],  # lt to rt cross
  [2,4,6]  # rt to lt
  # ETC, an array for each win combination
]
#WONwin
def won?(board)
  WIN_COMBINATIONS.each do| position |
    if board[position[0]] == "X" && board[position[1]] == "X" && board[position[2]] == "X" || board[position[0]] == "O" && board[position[1]] == "O" && board[position[2]] == "O"
      return position
    end
  end
  false
end


#FULL
def full?(board)
  board.all? {|position| position == "X" || position == "O"} #all board is full with x or o
 # return true if every element in the board contains either an "X" or an "O"

end

#DRAW
def draw?(board)
  if full?(board) && !won?(board)
    true
   else
      false
  end
end

#OVER
def over?(board)
  if full?(board) && won?(board) || draw?(board)
    true
  end
end

#WINNER
def winner(board)
  if won?(board) == false
    nil
  else board[won?(board)[0]]
  end
end