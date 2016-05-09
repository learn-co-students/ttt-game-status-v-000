# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
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
  WIN_COMBINATIONS.each do |position|
    if (board[position[0]] == "X" && board[position[1]] == "X" && board[position[2]] == "X") || (board[position[0]] == "O" && board[position[1]] == "O" && board[position[2]] == "O")
      return position
    end
  end
  false
end

def full?(board)
  board.each do |position|
    if board[position.to_i-1] == " " || board[position.to_i-1] == ""
      return false
    else
      return true
    end
  end
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  elsif won?(board) == false && full?(board) == false
    return false
  else
    return false
  end
end

def over?(board)
  if won?(board) == true || draw?(board) == true || full?(board) == true
    return true
  else
    false
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end
