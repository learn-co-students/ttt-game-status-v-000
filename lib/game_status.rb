# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.detect { |combo| board.values_at(*combo).count("X") == 3 || 
    board.values_at(*combo).count("O") == 3 }
end

def full?(board)
  !board.include?(" ")
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  draw?(board) || won?(board) || full?(board)
end

def winner(board)
  if board.values_at(*won?(board)).any? { |token| token == "X"}
    "X"
  elsif board.values_at(*won?(board)).any? { |token| token == "O"}
    "O"
  else
    nil
  end
end