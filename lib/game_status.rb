# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [6,4,2],
  [2,5,8],
  [0,3,6],
  [1,4,7]
]
def won?(board)
   WIN_COMBINATIONS.detect{|win| board[win[0]] ==  board[win[1]] && board[win[1]] ==  board[win[2]] && position_taken?(board,win[2])}
end
def full?(board)
  board.all? do |token|
    token == "O" || token == "X"
  end
end

def draw?(board)
   full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if won?(board) != nil
    board[won?(board)[0]]
  end
end
