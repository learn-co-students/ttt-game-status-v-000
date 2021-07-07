WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    win_combination.all?{|index| board[index] == "X"} || win_combination.all?{|index| board[index] == "O"}
    #board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X" || board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
  end
end

def full?(board)
  board.all?{|index| index == "X" || index == "O"}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if won?(board) && won?(board).all?{|i| board[i] == "X"}
    "X"
  elsif won?(board) && won?(board).all?{|i| board[i] == "O"}
    "O"
  end
end
