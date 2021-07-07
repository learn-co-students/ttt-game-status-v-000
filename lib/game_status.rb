# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
  end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board) #compares board to winning combinations
  win_combination =
  WIN_COMBINATIONS.find { |combo| board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" || board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"}
end

def full?(board)
  board.all?{|i| i == "X" || i == "O"}
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board)
    return false
  elsif won?(board)
    return false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  end
end

def winner(board)
  pippo = won?(board) #pippo should return true if there's a winner
  pippo != nil ? board[pippo[0]] : nil # pippo is not equal to nil or false, board contains the letter/winner and pippo is simple the integers/indexes
end
