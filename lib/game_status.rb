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
  x_moves = board.each_index.select { |x_moves| board[x_moves] == "X" }
  o_moves = board.each_index.select { |o_moves| board[o_moves] == "O" }
  WIN_COMBINATIONS.detect { |win_array|
    win_array.all? { |ary_index| x_moves.include?(ary_index) } ||
    win_array.all? { |ary_index| o_moves.include?(ary_index) }
  }
end

def full?(board)
  board.none? {|i| i == " " || i == ""}
end

def draw?(board)
  full?(board) == true && won?(board) == nil
end

def over?(board)
  won?(board) != nil || draw?(board)
end

def winner(board)
  if won?(board) != nil
    board[won?(board)[0]]
  end
end
