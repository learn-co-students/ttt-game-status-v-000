# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column
  [0,4,8], #right diagonal
  [2,4,6] #left diagonal
]

def won?(board)
  exes = []
  ohs = []
  board.each_with_index do |space, index|
    if space == "X"
      exes << index
    end
    if space == "O"
      ohs << index
    end
  end
  ex_win = WIN_COMBINATIONS.select do |win_combination|
    (win_combination - exes).empty?
  end
  oh_win = WIN_COMBINATIONS.select do |win_combination|
    (win_combination - ohs).empty?
  end
  if !ex_win.empty?
    return ex_win[0]
  elsif !oh_win.empty?
    return oh_win[0]
  else
    return false
  end
end

def full?(board)
  board.all?{|space| space == "X" || space == "O"}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || full?(board) || won?(board)
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end
