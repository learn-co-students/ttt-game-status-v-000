# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [1,4,7],
  [0,3,6],
  [2,5,8]
  ]
def won?(board)
  WIN_COMBINATIONS.each do|combination|
    win_index1 = combination[0]
    win_index2 = combination[1]
    win_index3 = combination[2]

    position1 = board[win_index1]
    position2 = board[win_index2]
    position3 = board[win_index3]
    
    if (position1 == "X" && position2 == "X" && position3 == "X") ||
       (position1 == "O" && position2 == "O" && position3 == "O")
      return combination
    end
  end
  return false
end

def full?(board) 
  board.all? {|element| element == "X" || element == "O"}
end
  
def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end

def over?(board)
  return (won?(board) || draw?(board))
end

def winner(board)
  if won?(board)
     won?(board).all? do |position|
      if board[position] == "X"
        return "X"
      else
        return "O"
      end
    end
  end
end


