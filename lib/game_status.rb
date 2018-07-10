WIN_COMBINATIONS = [
  [0, 1, 2], #Top Row
  [3, 4, 5], #Middle Row
  [6, 7, 8], #Bottom Row
  [0, 3, 6], #Left Column
  [1, 4, 7], #Middle Column
  [2, 5, 8], #Right Column
  [0, 4, 8], #Left Diagonal
  [2, 4, 6] #Right Diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |wincombo|
  if board[wincombo[0]] == "X" && board[wincombo[1]] == "X" && board[wincombo[2]] == "X"
    return wincombo
  elsif board[wincombo[0]] == "O" && board[wincombo[1]] == "O" && board[wincombo[2]] == "O"
    return wincombo
  end
end
false
end

def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end

def draw?(board)
    if !won?(board) && full?(board)
      return true
    else
      return false
    end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end
