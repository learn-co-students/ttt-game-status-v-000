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
  [6,4,2]
]

def won?(board)
  win_array = false

  WIN_COMBINATIONS.each do |array|
    if board[array[0]] == "X" && board[array[1]] == "X" && board[array[2]] == "X" || board[array[0]] == "O" && board[array[1]] == "O" && board[array[2]] == "O"
      win_array = array
    end
  end
  win_array
end

def full?(board)
all_board = board.all? do |space|
  space == "X" || space == "O"
end
all_board
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    true
  else
    false
  end
end

def over?(board)
  if won?(board)  || full?(board) || draw?(board)
    true
  else
    false
  end
end

def winner(board)
  if won?(board)
  board[won?(board)[0]]
end
end
