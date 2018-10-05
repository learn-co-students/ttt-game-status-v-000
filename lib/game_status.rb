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
  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] == board[combo[1]] && board[combo[0]] == board[combo[2]] && position_taken?(board, combo[0])
      return combo
    end
  end
  return false
end

def full?(board)
  board.none?{|x| x == " " }
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if !won?(board)
    return nil
  else
    if board[won?(board)[0]].include?("X")
      return "X"
    else
      return "O"
    end
  end
end
