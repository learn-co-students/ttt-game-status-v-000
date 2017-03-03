# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [3,4,5],
  [0,1,2],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

# helper method to find wins based on character
def won_var?(board, char = "X")
  WIN_COMBINATIONS.find do |win_combo|
    win_combo.all? {|win_index| board[win_index] == char}
  end # WIN_COMBINATIONS.find do block
end # def won?

#defining the method #won? that accepts the argument of a boardß
def won?(board)
  if won_var?(board, "X") == nil
    won_var?(board, "O")
  else
    won_var?(board, "X")
  end
end # def won?

def full?(board)
  board.none? {|space| space == " "}
end

def draw?(board)
  # return true if the board has not been won and is full
  if won?(board) == nil && full?(board) == true
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) == true || full?(board) == true || draw?(board) == true
    return true
  else
    return false
  end
end

def winner(board)
  if won_var?(board, "X") != nil
    return "X"
  elsif won_var?(board, "O") != nil
    return "O"
  else
    return nil
  end
end # def won?
