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
  WIN_COMBINATIONS.detect do |winning_combo|
    winning_combo.all?{|x| board[x] == "X"} ||
    winning_combo.all?{|x| board[x] == "O"}
  end
end

def full?(board)
  board.all?{|x| x == "X" || x == "O"}
end

def draw?(board)
  full?(board) && !won?(board) ? true : false
end

def over?(board)
  won?(board) || draw?(board) || full?(board) ? true : false
end

def winner(board)
  won_array = won?(board)
  won_array ? board[won_array[0]] : nil
end
