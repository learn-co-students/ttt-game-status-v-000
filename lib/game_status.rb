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
  WIN_COMBINATIONS.each do |combination|
    if board[combination[0]] == "X" && board[combination[1]] == "X" && board[combination[2]] == "X"
      return combination
    elsif
      board[combination[0]] == "O" && board[combination[1]] == "O" && board[combination[2]] == "O"
      return combination
  end
end
  return false
end

def full?(board)
  board.all? do |player|
    player == "X" || player == "O"
end
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  else won?(board) == false && full?(board) == false || won?(board) == true
    return false
end
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  winning_combination = won?(board)
  if won?(board) == false
    return nil
  elsif board[winning_combination[0]] == "X"
    return "X"
  elsif board[winning_combination[0]] == "O"
    return "O"
end
end
