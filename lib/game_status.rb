# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], #Bottom row
  [0,3,6],  # Left horizontal row
  [1,4,7],#center horzontal row
  [2,5,8], #right horizontal row
  [0,4,8], #diagonal down left
  [2,4,6] #diagonal down right
  # ETC, an array for each win combination
]

def won?(board)
  WIN_COMBINATIONS.detect do |strategy|
    board[strategy[0]] == board[strategy[1]] &&
    board[strategy[1]] == board[strategy[2]] &&
    position_taken?(board, strategy[0])
  end
end

def full?(board)
  board.all? { |token| token == "X" || token == "O"}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
  if winner = won?(board)
    board[winner.first]
  end
end
