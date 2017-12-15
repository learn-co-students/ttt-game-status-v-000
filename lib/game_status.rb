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
  [2,4,6],
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_cmbo|
    board[win_cmbo[0]] == board[win_cmbo[1]] &&
    board[win_cmbo[1]] == board[win_cmbo[2]] &&
    position_taken?(board, win_cmbo[1])
  end
end

def full?(board)
  WIN_COMBINATIONS.all? do |win_cmbo|
    board[win_cmbo[0]] == "X" || board[win_cmbo[0]] == "O"
    position_taken?(board, win_cmbo[0])
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  if won?(board)
    combo = won?(board)
    board[combo[0]]
  end
end
