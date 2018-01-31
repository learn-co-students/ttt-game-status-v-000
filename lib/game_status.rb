# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,4,8], #diagonal 1
  [2,4,6], #diagonal 2
  [0,3,6], #vertical 1
  [1,4,7], #vertical 2
  [2,5,8] #vertical 3
]

# WIN_COMBINATIONS[0] == [0, 1, 2]
# WIN_COMBINATIONS[0][0] == 0
# combination on the first round == [0, 1, 2]
# combination[0] no the first round == 0
# combination[0] == WIN_COMBINATIONS[0][0] onthe frist round
# combination[2] == WIN_COMBINATIONS[0][2]

def won?(board)
  WIN_COMBINATIONS.detect do |combination| # combination on the first loop will equal [0,1,2], which is an array of index values
    board[combination[0]] == board[combination[1]] && board[combination[1]] == board[combination[2]] && board[combination[0]] != " "
  end
end

def full?(board)
  # google all? array iterator
  board.all? do|occupied|
    (occupied == "X" || occupied =="O") && (occupied != " ")
  end
end

def draw?(board)
  if full?(board) && ! won?(board)
    true
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    true
  end
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  end
end
