# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row win
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  # what you can do is !won?(board) or you can do won?(board) == nil
  # what you can't do is won?(board) == false
  WIN_COMBINATIONS.detect do |win_comb|
  # based off of first loop, win_comb will equal [0,1,2]
  # the board which is an array of "X", "O", " "
    win_index_1 = win_comb[0]
    win_index_2 = win_comb[1]
    win_index_3 = win_comb[2]
    position_1 = board[win_index_1] #["X", "X", "X", ect]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    position_1 == position_2 && position_2 == position_3 && position_1 != " "
  end
end

def full?(board)
  theboard = board.select do |check|
    check == "X" || check == "O"
  end
    theboard.size == board.size
  #   return true
  # else
  #  return false
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end
#
def over?(board)
  if draw?(board) || won?(board) || full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    win_check = won?(board)
    return board[win_check[0]]
  else
    return nil
  end
end
