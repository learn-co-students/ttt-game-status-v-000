# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # top row
  [3, 4 ,5], # middle row
  [6, 7, 8], # bottom row
  [0, 3, 6], # left column
  [1, 4, 7], # middle column
  [2, 5, 8], # right column
  [0, 4, 8], # main diagonal
  [2, 4, 6] # off diagonal
]

# Won method
def won?(board)
  WIN_COMBINATIONS.each do |combination|
    if board[combination[0]] == "X" && board[combination[1]] == "X" && board[combination[2]] == "X"
      return combination
    elsif board[combination[0]] == "O" && board[combination[1]] == "O" && board[combination[2]] == "O"
      return combination
    end
  end
  return false
end

# Full method
def full?(board)
  board.none?{|i| i == " "}
end

# Draw method
def draw?(board)
  full?(board) == true && won?(board) == false
end

# Over method
def over?(board)
  draw?(board) || won?(board)
end

# Winner method
def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  else
    return nil
  end
end

