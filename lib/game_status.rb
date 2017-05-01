# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8],
  [0,3,6], [1,4,7], [2,5,8],
  [0,4,8],[6,4,2]
]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[2]] == board[combo[0]] &&
    position_taken?(board, combo[0])
  end
end

def full?(board)
  board.all? do |index|
    index != " "
  end
end

def draw?(board)
  if full?(board) && !(won?(board))
    return true
  else
    false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    false
end
end

#def winner(board)
  #if won?(board) == ["X","X","X"]
    #return "X"
  #elsif won?(board) == ["O","O","O"]
    #return "O"
  #end
#end

def winner(board)
  WIN_COMBINATIONS.any? do |combo|
    if board[combo[0]] == "X" && board[combo[1]] == "X" &&
    board[combo[2]] == "X"
    return "X"
  elsif  board[combo[0]] == "O" && board[combo[1]] == "O" &&
  board[combo[2]] == "O"
  return "O"
  end
end
else
  nil
end
