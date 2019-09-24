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
  [6,4,2]
]

def won?(board)
  WIN_COMBINATIONS.detect do |position|
    board[position[0]] == board[position[1]] &&
    board[position[1]] == board[position[2]] &&
    position_taken?(board, position[0])
  end
end


def full?(board)
board.all?{|i| i == "X" || i == "O"}
end

def draw?(board)
full?(board) && !won?(board)
end

def over?(board)
  full?(board) || won?(board)
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end
