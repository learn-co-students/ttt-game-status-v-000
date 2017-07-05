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
  [2,4,6],
]

def won?(board)
  WIN_COMBINATIONS.each do |set|
    win_index_1 = set[0]
    win_index_2 = set[1]
    win_index_3 = set[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
      return set
    end
  end
  return false
end

def full?(board)
  board.none? do |space|
    if space != "X" && space != "O"
      return false
    end
  end
end

def draw?(board)
  if full?(board) && (won?(board) == false)
    return true
  else
    return false
  end
end

def over?(board)
  if draw?(board) || full?(board) || won?(board)
    return true
  else
    return false
  end
end

def winner(board)
  set_of_winning_numbers = won?(board)
  if set_of_winning_numbers == false
    return nil
  else
    return board[set_of_winning_numbers[0]]
  end
end
