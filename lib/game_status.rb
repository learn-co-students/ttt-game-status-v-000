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
  [6,4,2],
]

def won?(board)
  WIN_COMBINATIONS.each do |winning_array|
  if board[winning_array[0]] == "X" && board[winning_array[1]] == "X" && board[winning_array[2]] == "X" || board[winning_array[0]] == "O" && board[winning_array[1]] == "O" && board[winning_array[2]] == "O"
    return winning_array
  end
end
false
end

def full?(board)
  board.all? do |element|
  element == "X" || element == "O"
    end
  end

def draw?(board)
  if !won?(board) && full?(board)
    true
  end
end

def over?(board)
  if draw?(board) || won?(board) || full?(board)
    true
  end
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  end
end
