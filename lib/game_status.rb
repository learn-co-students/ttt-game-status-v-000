WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,4,8], [2,4,6], [0,3,6], [1,4,7], [2,5,8]]

def won?(board)
  WIN_COMBINATIONS.each do |combination|
    return combination if (combination.all? {|position| board[position] == "X"}) || (combination.all? {|position| board[position] == "O"})
  end
  false
end

def full?(board)
  board.each do |character|
    return false unless character == "X" || character == "O"
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board) || won?(board) || draw?(board)
end

def winner(board)
  return board[won?(board).first] if won?(board)
end
