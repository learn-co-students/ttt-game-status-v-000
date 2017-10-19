# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
WIN_COMBINATIONS.detect do |combinations|
  index_1 = combinations[0]
  index_2 = combinations[1]
  index_3 = combinations[2]

  position_1 = board[index_1]
  position_2 = board[index_2]
  position_3 = board[index_3]

  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return combinations
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    return combinations
  else
    false
  end
end
false
end


def full?(board)
  board.all? do |complete|
    complete != " "
  end
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  won = won?(board)
if won
  board[won[0]]
end
end
