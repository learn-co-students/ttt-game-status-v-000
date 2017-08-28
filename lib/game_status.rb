board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]

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

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  end
end

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    position_taken?(board, combo[0]) && board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]]
  end
end

def full?(board)
  board.all? do |spot| #for all the |spot| on the board array
    spot == "X" || spot == "O"  #the |spot| must be an "X" OR an "O"
  end #return TRUE if ALL elements of board pass the above, FALSE if any element fails
end

def draw?(board)
 full?(board) && !won?(board)
end

def over?(board)
  if won?(board)
    true
  elsif full?(board)
    true
  elsif draw?(board)
    true
  end
end

def winner(board)
  if combo = won?(board)
    board[combo[0]]
  else draw?(board)
    nil

  end

end
