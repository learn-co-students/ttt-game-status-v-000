# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]
def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    win_combination.all? { |win_index| board[win_index] == "X" } ||
    win_combination.all? { |win_index| board[win_index] == "O" }
  end
end
 def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end 
def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board)
    return false
  else won?(board)
    return false
  end
end
def over?(board)
  if draw?(board) || won?(board) || full?(board)
    return true
  end
end
def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end