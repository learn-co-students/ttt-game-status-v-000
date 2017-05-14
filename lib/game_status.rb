# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]
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
    WIN_COMBINATIONS .detect do |win_combination|
      board[win_combination[0]] == board[win_combination[1]] &&
      board[win_combination[1]] == board[win_combination[2]] &&
      board[win_combination[0]] !=" "
      position_taken?(board, win_combination)
end

def full?(board)
  board .all? do |index|
    index != " "
  end
end

def draw?(board)
  if won?(board) == nil && full?(board) == true
    true
  else
    return false
  end
end

def over?(board)
  if won?(board) == true || draw?(board) == true || full?(board) == true
    true
  else
    false
  end
end

def winner(board)
  if winning_combo = won?(board)
  board[winning_combo.first]
end
end
#def won? (board)
#position_1 = board[0]
#position_2 = board[1]
#position_3 = board[2]
#  if position_1 == "X" && position_2 == "X" && position_3 == "X"
#    return true
#  else
#    false
#  end
#end

  #return true if there is a win
  #return false/nil if not
  #Board as argument
  #return an array with the wininng positions is there is a win
  #Board wins with Os or Xs
