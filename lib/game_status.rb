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
  [2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|

    if ((position_taken?(board,win_combination[0])) &&  (board[win_combination[0]] == "X")) && ((position_taken?(board,win_combination[0])) && (board[win_combination[1]] == "X")) &&
      ((position_taken?(board,win_combination[0])) && (board[win_combination[2]] == "X"))
      return win_combination
  elsif ((position_taken?(board,win_combination[0])) && (board[win_combination[0]] == "O")) && ((position_taken?(board,win_combination[0])) && (board[win_combination[1]] == "O")) &&
    ((position_taken?(board,win_combination[0])) && (board[win_combination[2]] == "O"))
      return win_combination
  end
end
return false

end

def full?(board)
  board.all? {|cell| cell != " "}
end

def draw?(board)

  if !won?(board) && full?(board)
    true
  elsif !won?(board) && !full?(board)
    false
  else
    false
  end
end

def over?(board)
  won?(board) || full?(board) || draw?(board) ? true : false
end

def winner(board)
  won?(board) ? board[won?(board)[0]] : nil
end
