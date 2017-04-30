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
WIN_COMBINATIONS.find do |i|
  board[i[0]] == "X" && board[i[1]] == "X" && board[i[2]] == "X" || board[i[0]] == "O" && board[i[1]] == "O" && board[i[2]] == "O"
  end
end

def full?(board)
  board.none?{|i| i == " "}
end

def draw?(board)
  if won?(board) == nil && full?(board) == true
    return true
  elsif full?(board) == false && won?(board) == false
    return false
  elsif won?(board) == true
    return false
  end
end

def over?(board)
  if won?(board) != nil || draw?(board) == true || full?(board) == true
    return true
  end
end

def winner(board)
  if index = won?(board)
    board[index[0]]
  end
end
