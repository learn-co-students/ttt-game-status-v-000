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
  WIN_COMBINATIONS.each do |item|
    win_index_1 = item[0]
    win_index_2 = item[1]
    win_index_3 = item[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return item
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return item
    end
  end
  return false
end

def full?(board)
  board.none?{ |e| e == " "}
end

def draw?(board)
  if won?(board)
    return false
  elsif full?(board)
    return true
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  who_won = won?(board)
  if who_won
    return board[who_won[0]]
  else
    return nil
  end
end
