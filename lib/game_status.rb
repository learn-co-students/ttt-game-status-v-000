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
  WIN_COMBINATIONS.each do |combo|
    if (combo.all? {|index| board[index] == "X"}) || (combo.all? {|index| board[index] == "O"})
      return combo
    end
  end
  return false
end


def full?(board)
  board.each.all? {|value| value == "X" || value == "O"}
end

def draw?(board)
  full?(board) && won?(board) == false
end

def over?(board)
  full?(board) || won?(board) || draw?(board)
end

def winner(board)
  return board[won?(board).first] if won?(board)
end
