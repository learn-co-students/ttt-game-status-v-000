# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  # ETC, an array for each win combination
  [6,7,8], # bottom row
  [0,3,6], #left column
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

##board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def full?(board)
  board.all? do |position|
    position == "X" || position == "O"
  end
end

def won?(board)
  position_1 = 0
  position_2 = 0
  position_3 = 0

  WIN_COMBINATIONS.detect do |combo|

    win_index_1 = combo[0]
    win_index_2 = combo[1]
    win_index_3 = combo[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]


   if (position_1 == "X" && position_2 == "X" && position_3 == "X")
     return combo
   elsif (position_1 == "O" && position_2 == "O" && position_3 == "O")
     return combo
   end
 end
 return nil
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if full?(board) || won?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  else
    return nil
  end
end
