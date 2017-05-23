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
  [2, 4, 6],
  [0, 4, 8]
]

def won?(board)
  WIN_COMBINATIONS.detect do |winning_numbers|
    board[winning_numbers[0]] == board[winning_numbers[1]] && board[winning_numbers[2]] == board[winning_numbers[0]] && position_taken?(board, winning_numbers[0])
  end
end

def full?(board)
  board.none? do |x|
    x == " "
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board) || won?(board)
end

def winner(board)
  if winning_game = won?(board)
    board[won?(board).first]
  end
end
