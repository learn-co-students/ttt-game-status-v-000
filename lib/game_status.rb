# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
 WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
[6,7,8],
[2,4,6],
[0,3,6],
[1,4,7],
[2,5,8],
[0,8,4]]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    win_combination.all? { |win_index| board[win_index] == "X" } ||
    win_combination.all? { |win_index| board[win_index] == "O" }
  end
end

def full?(board)
  board.each do |i|
 if board.any?{|i|i ==" "}
   return false 
else return true 
 end 
end
end
def draw?(board)
 if full?(board) && !won?(board)
   return true
 else return false
 end
end

def over?(board)
  if full?(board) || won?(board) || draw?(board)
    return true
  else return false
end
  end
  
def winner(board)
  won = won?(board)
  if won != nil
    return board[won[0]]
  end
  end