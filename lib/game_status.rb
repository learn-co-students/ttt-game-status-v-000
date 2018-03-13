# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def won?(board)
  if board.all?{ |space| space==" "}
    return false
  elsif board.all?{ |space| space == "X" || space == "O"}
    return false
  elsif board[0] == "X" && board[1] == "X" && board[2] == "X"
    return WIN_COMBINATIONS[0]
  end
end

def full(board)
end

def draw(board)
end

def over(board)
end

def winner(board)
end
