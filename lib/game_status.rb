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
  WIN_COMBINATIONS.detect do |win_combination|
    position_taken?(board, win_combination[0]) && board[win_combination[0]] == board[win_combination[1]] && board[win_combination[0]] == board[win_combination[2]]
  end
end

def full?(board)
 board.each do |index|
   if index == " "
     return false
 end
 end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  if draw?(board) == true
    return true
  elsif full?(board) == false || full?(board) == nil && won?(board) == false || won?(board) == nil
    return false
  elsif won?(board) != false || won?(board) != nil
    return true
  end
end

def winner(board)
  if won?(board) == false || won?(board) == nil
    return nil
  else
    return board[won?(board)[0]]
  end
end
