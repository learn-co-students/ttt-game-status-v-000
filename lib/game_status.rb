 # Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
# horizontal wins
  [0,1,2], # top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
#vertical wins
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8], # right column
# diagonal wins
  [0,4,8], # top left to bottom right diagonal
  [2,4,6] # top right to bottom left diagonal
]

def won?(board)

  WIN_COMBINATIONS.each do | win_combination |
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == position_2 && position_2 == position_3 && position_1 != " "
      return win_combination
    end
  end
  return false
end


def full?(board)
  if board.include?(" ") || board.include?(nil)
    return false
  else
    return true
  end
end

def draw?(board)
# return true if the board has not been won and is full
  if won?(board) == false && full?(board) == true
    return true
  end
# return false if board is not won and the board is not full
# return false if board is won
end

def over?(board)
  if won?(board) == true || full?(board) == true || draw?(board) == true
    return true
  end
end

def winner(board)
  win_combo = won?(board)
  if won?(board)
    return board[win_combo[0]]
  end
end
