# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS= [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Last row
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [2,4,6],
  [0,4,8]
]


def won?(board)
  WIN_COMBINATIONS.detect do |location|
     #if board[location[0]] == "X" && board[location[1]] == "X" && board[location[2]] == "X"
    #    location
    # elsif board[location[0]] == "O" && board[location[1]] == "O" && board[location[2]] == "O"
    #    location
    # else
      #  false
      #easier to read less code
      (board[location[0]] == "X" && board[location[1]] == "X" && board[location[2]] == "X") ||
      (board[location[0]] == "O" && board[location[1]] == "O" && board[location[2]] == "O")
  end
end


def full?(board)
   #board.all? do |space| space == "X" || space == "O"
   #shorter method
   board.all? {|space| space == "X" || space == "O"}
end


def draw?(board)
  full?(board) && !won?(board)
end


def over?(board)
  draw?(board)  || won?(board)  || full?(board)
end


def winner(board)
  if winning_location = won?(board)
    board[winning_location.first]
  end
end
