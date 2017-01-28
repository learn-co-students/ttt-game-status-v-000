# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def won?(board)
  WIN_COMBINATIONS.any? do |win_combination|
  if (
  win_combination.all? do |item|
    board[item]=="X"
  end )
  return win_combination
  elsif (
  win_combination.all? do |item|
    board[item]=="O"
     end )
   return win_combination
   end
   end
   end

  def full?(board)
    board.all? {|item| item =="X"  || item =="O"}
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
won?(board) || draw?(board) || full?(board)
end

def winner(board)
won = won?(board)
  if won == false || won == nil
    return nil
  else
    return board[won?(board)[0]]
  end
end
 
