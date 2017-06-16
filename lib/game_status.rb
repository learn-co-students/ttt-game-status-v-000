# Helper Method
def position_taken?(board, location)
  board[location]=="X" || board[location] == "O")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    #Horizontal
    [0,1,2],
    [3,4,5],
    [6,7,8],
    #Vertical
    [0,3,6],
    [1,4,7],
    [2,5,8],
    #Diagonal
    [2,4,6],
    [0,4,8]
]
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def won?(board)
  WIN_COMBINATIONS.detect do |win|
    board[win[0]] == board[win[1]] && board[win[1]] == board[win[2]] && position_taken?(board, win[0])
  end
end

def full?(board)
  !board.any? do |empty|
    empty == " "
  end
end

def draw?(board)
  if !won?(board) == false
  elsif full?(board) == true
    true
  else
    false
  end
end

def over?(board)
  if won?(board) == true || full?(board) == true
    true
   else
    false
  end
end

def winner(board)
  winner = won?(board)
  if winner
    board[winner[0]]
  end
end
