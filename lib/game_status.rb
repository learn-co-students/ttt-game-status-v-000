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
  WIN_COMBINATIONS.each do |combination|
    counter = 0
    position = []
    combination.each do |index|
      position[counter] = board[index]
      counter += 1
    end
    if position[0] == "X" && position[1] == "X"  && position[2] == "X"
      return combination
    elsif position[0] == "O" && position[1] == "O"  && position[2] == "O"
      return combination
    else
      false
    end
  end
  return false
end

def full?(board)
  board.all? do |spot|
    spot == "X" || spot == "O"
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  elsif full?(board) == true && won?(board) == true
    return false
  else
    return false
  end
end

def over?(board)
  if won?(board)
    return true
  elsif draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    combination = won?(board)
    return board[combination[0]]
  end
end
