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
  [2,4,6]
]

def wonX?(board)
  WIN_COMBINATIONS.detect do |win_array|
    board[win_array[0]] == "X" && board[win_array[1]] == "X" && board[win_array[2]] == "X"
end
end

def wonO?(board)
  WIN_COMBINATIONS.detect do |win_array|
    board[win_array[0]] == "O" && board[win_array[1]] == "O" && board[win_array[2]] == "O"
end
end

def won?(board)
  if wonX?(board)
    return wonX?(board)
  elsif wonO?(board)
    return wonO?(board)
  else
    return false
  end
end

def full?(board)
  !board.any?{|element| element == nil || element == "" || element == " "}
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else return false
  end
end

def over?(board)
  if draw?(board)
    return true
  elsif won?(board)
    return true
  else return false
  end
end

def winner(board)
  if draw?(board)
    return nil
    elsif wonX?(board)
    return "X"
  elsif wonO?(board)
    return "O"
  else return nil
  end
end
