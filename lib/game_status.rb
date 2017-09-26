# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row

  [0,4,8],  #first diagonal
  [2,4,6],  #second diagonal

  [0,3,6],  # Left column
  [1,4,7],  # Middle column
  [2,5,8]  # Bottom column
]

def won?(board)
  WIN_COMBINATIONS.each do |winCombo|
      posArray = [] #reset the posArray

      winCombo.each do |position|
        posArray << board[position]
      end #end of a specific win combo loop

      if posArray[0] == posArray[1] && posArray[1] == posArray[2] && posArray[0] != " "
        return winCombo
      end

  end #end of win combinations loop

  return false
end #end of def


def full?(board)
  if board.include?(" ")
    return false
  else
    return true
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if full?(board) || won?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if !won?(board)
    return nil
  else
    return board[won?(board)[0]]
  end
end
