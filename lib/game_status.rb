# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.each {|winner|
    first = winner[0]
    second = winner[1]
    third = winner[2]

    first_position = board[first]
    second_position = board[second]
    third_position = board[third]

    if first_position == "X" && second_position == "X" && third_position == "X"
      return winner
    elsif first_position == "O" && second_position == "O" && third_position == "O"
      return winner
    end
  }
    return false
end

def full?(board)
  board.all? {|character| character == "X" || character == "O"}
end

def draw?(board)
    if !won?(board) && full?(board)
      return true
    else
      return false
    end
end

def over?(board)
  if won?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if winner = won?(board)
    board[winner.first]
end
end
