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
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.detect do |var|
    board[var[0]] == board[var[1]] &&
    board[var[1]] == board[var[2]] &&
    position_taken?(board, var[0])
  end
end

def full?(board)
  board.all?{|marker| marker == "X" || marker == "O"}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  full?(board) || draw?(board) || won?(board)
end

def winner(board)
  if takes_the_win = won?(board)
    board[takes_the_win.first]
  end
end
