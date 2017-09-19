# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],  [0, 3, 6],  [0, 4, 8],
  [3, 4, 5],  [1, 4, 7],  [2, 4, 6],
  [6, 7, 8],  [2, 5, 8]
]

def won?(board)
  WIN_COMBINATIONS.each do |index|
    win_index_1 = index[0]
    win_index_2 = index[1]
    win_index_3 = index[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return index
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return index
    end
  end
  false
end

def full?(board)
  outcome = board.all? do |type|
    type == "O" || type == "X"
  end
  if outcome == true
    true
  else
    false
  end
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  end
  false
end

def over?(board)
  if won?(board) != false || draw?(board) == true || full?(board) == true
    return true
  end
  false
end

def winner(board)
  if won?(board) != false
    index = won?(board)
    index.each do |type|
      if board[type] == "X"
        return "X"
      else
        return "O"
      end
    end
  end
  nil
end
