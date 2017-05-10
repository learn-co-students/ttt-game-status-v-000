# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,4,8], #diagonal 1
  [2,4,6], #diagonal 2
  [0,3,6], #first column
  [1,4,7], #second column
  [2,5,8]  #third column
]
def won?(board)
  # top row win consist of board[0], board[1], board[2]
  # if top row win is "X", "X", "X", or "O", "O", "O"
  # think of when the elements are all " "
  WIN_COMBINATIONS.detect{|index| board[index[0]] == board[index[1]] && board[index[1]]  == board[index[2]] && position_taken?(board, index[0])}
end
# won?(board)[0]
def full?(board)
  !board.any?{|index| index == " "}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
    if won?(board) 
      board[won?(board)[0]]
    end
end