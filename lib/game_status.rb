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
  WIN_COMBINATIONS.detect { |index_array|
     index_array.all? {|i| board[i] == "X"} || index_array.all? {|i| board[i] == "O"}}
end

def full?(board)
    board.all? { |i| !(i == ' ' || i.nil?) }
end

def draw?(board)
  full?(board) && !(won?(board))
end

def over?(board)
  full?(board) || won?(board) || draw?(board)
end

def winner(board)
  if won?(board)
    if WIN_COMBINATIONS.any? { |index_array| index_array.all? {|i| board[i] == "X" }}
       return 'X'
     else return 'O'
   end
  end
end
