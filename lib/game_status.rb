# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

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
  WIN_COMBINATIONS.each do |win_combination|
    # make an array of plays on the board, for each winning index combination
    winning_indexes = []
    win_combination.each do |index|
      winning_indexes << board[index]
    end
    # check each winning_index array for a win and return the winning position if one is a winning combination
    if winning_indexes.all?{|i| i == "X"} || winning_indexes.all?{|i| i == "O"}
      return win_combination
    else
      next
    end
  end
  #if no combination has returned "true", then return false
  return false
end

def full?(board)
  board.all?{|i| i == "X" || i == "O"}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
  if won?(board)
    win_combination = won?(board)
    board[win_combination[0]]
  end
end
