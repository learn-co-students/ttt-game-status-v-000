require 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def won?(board)
  for combination in WIN_COMBINATIONS do
    if board[combination[0]] == "X" && board[combination[1]] == "X" && board[combination[2]] == "X" || board[combination[0]] == "O" && board[combination[1]] == "O" && board[combination[2]] == "O" 
      return combination
    end
  end
  return false
end

def full?(board)
  board.none? { |empty_index| empty_index == " "}
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
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
  if won?(board)
    return board[won?(board)[0]]
  else
    return nil
  end
end
