# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [2, 4, 6],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8]
]

def won?(board)
  WIN_COMBINATIONS.each do |array|

    position1 = board[array[0]]
    position2 = board[array[1]]
    position3 = board[array[2]]

    if position1 == "X" && position2 == "X" && position3 == "X"
      return array[0..2]
    elsif position1 == "O" && position2 == "O" && position3 == "O"
      return array[0..2]
    end
  end
  return false
end

def full?(board)
  board.each do |ele|
    if ele != "X" && ele != "O"
      return false
    end
  end
  return true
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if draw?(board) || won?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    index = won?(board)[0]
    return board[index]
  end
end
