# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
#defines a constant with arrays for each win condition
 WIN_COMBINATIONS = [
  [0, 1, 2], # top row
  [3, 4, 5], # middle row
  [6, 7, 8], # bottom row
  [0, 3, 6], # left column
  [1, 4, 7], # middle column
  [2, 5, 8], # bottom column
  [0, 4, 8], # left diagonal
  [2, 4, 6]] # right diagonal
def won?(board)
  WIN_COMBINATIONS.each do |win|
if win.all?{|y| board[y] == "X"}
  return win
elsif win.all?{|y| board[y] == "O"}
  return win
  end
end
return false
end
def full?(board)
  board.all? do |postion|
    postion == "X" || postion == "O"
  end
end
def draw?(board)
  !(won?(board)) && full?(board)
end
def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  end
    return false
  end
def winner(board)
  if (draw?(board) || !full?(board)) && !won?(board)
    return nil
  elsif (board[won?(board)[0]] == "X")
    return "X"
  elsif (board[won?(board)[0]] == "O")
    return "O"
    end
  end
