# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [2,4,6],
  [0,4,8],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
  WIN_COMBINATIONS.each do |win|
    if board[win[0]] == "X" && board[win[1]] == "X" && board[win[2]] == "X" ||
      board[win[0]] == "O" && board[win[1]] == "O" && board[win[2]] == "O"
    return win
  end
end
false
end

def full?(board)
  if board.all? { |fill| fill == "X" || fill == "O" }
    return true
  end
  false
end

def draw?(board)
  if full?(board) && won?(board) == false
    return true
  end
  false
end

def over?(board)
  if full?(board) == true
    return true
  elsif won?(board) || draw?(board)
    return true
  end
  false
end

def winner(board)
 if won?(board)
   board[won?(board)[0]]
 end
end
