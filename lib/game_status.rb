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

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    if (board[combo[0]]) == "X" && (board[combo[1]]) == "X" && (board[combo[2]]) == "X"
      return combo
    elsif (board[combo[0]]) == "O" && (board[combo[1]]) == "O" && (board[combo[2]]) == "O"
      return combo
    end
  end
  false
end

def full?(board)
  board.none? do |i|
    i == " "
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  else
    return false
  end
end

def over?(board)
  if full?(board) == true
    return true
  elsif draw?(board) == true
    return true
  elsif won?(board) == true
    return true
  else
    false
  end
end

def winner(board)
  WIN_COMBINATIONS.detect do |combo|
    if (board[combo[0]]) == "X" && (board[combo[1]]) == "X" && (board[combo[2]]) == "X"
      return "X"
    elsif (board[combo[0]]) == "O" && (board[combo[1]]) == "O" && (board[combo[2]]) == "O"
      return "O"
    end
  end
end
