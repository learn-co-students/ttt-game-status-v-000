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
  x_indicies = []
  o_indicies = []

  counter = 0

  while counter < board.length
    space = board[counter]
    if space == "O"
      o_indicies << counter
    elsif space == "X"
      x_indicies << counter
    end
    counter += 1
  end

  WIN_COMBINATIONS.detect do |i|
    (i - o_indicies).empty? || (i - x_indicies).empty?
  end
end

def full?(board)
  !(board.detect{|i| i != "X" && i != "O"})
end

def draw?(board)
  !!(full?(board) && !(won?(board)))
end

def over?(board)
  !!(won?(board)) || !!(draw?(board))
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  else nil
  end
end
