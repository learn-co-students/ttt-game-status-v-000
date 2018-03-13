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
    return [WIN_COMBINATIONS[0][0], WIN_COMBINATIONS[0][1], WIN_COMBINATIONS[0][2]]
  elsif board[3] == "X" && board[4] == "X" && board[5] == "X"
    return WIN_COMBINATIONS[1]
  elsif board[6] == "X" && board[7] == "X" && board[8] == "X"
    return WIN_COMBINATIONS[2]
  elsif board[0] == "O" && board[3] == "O" && board[6] == "O"
    return WIN_COMBINATIONS[3]
  elsif board[1] == "O" && board[4] == "O" && board[7] == "O"
    return WIN_COMBINATIONS[4]
  elsif board[2] == "O" && board[5] == "O" && board[8] == "O"
    return WIN_COMBINATIONS[5]
  elsif board[0] == "X" && board[4] == "X" && board[8] == "X"
    return WIN_COMBINATIONS[6]
  elsif board[2] == "O" && board[4] == "O" && board[6] == "O"
    return WIN_COMBINATIONS[7]
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
