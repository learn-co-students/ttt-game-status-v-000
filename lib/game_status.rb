board = ["X","X","X","O","O"," "," "," "," "]

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

  #if board.empty?
    #return false
def won?(board)
  if board == [" "," "," "," "," "," "," "," "," "]
    return false
  end
  WIN_COMBINATIONS.detect {|array|
    board[array[0]] == board[array[1]] &&
    board[array[1]] == board[array[2]] &&
    position_taken?(board, array[0])}
end

def full?(board)
  if board.detect {|i| i == " "}
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
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    if board[won?(board)[0]] == "X"
      return "X"
    elsif board[won?(board)[0]] == "O"
      return "O"
    else
      return nil
    end
  else
    return nil
  end
end

#elsif board[0] == board[1] && board[2] == board[0] && position_taken?(board, 0)
  #elsif board[3] == board[4] && board[5] == board[3] && position_taken?(board, 3)
  #return WIN_COMBINATIONS[1]
#elsif board[6] == board[7] && board[8] == board[6] && position_taken?(board, 6)
  #return WIN_COMBINATIONS[2]
#elsif board[0] == board[3] && board[6] == board[0] && position_taken?(board, 0)
#  return WIN_COMBINATIONS[3]
#elsif board[1] == board[4] && board[7] == board[1] && position_taken?(board, 1)
#  return WIN_COMBINATIONS[4]
#elsif board[2] == board[5] && board[8] == board[2] && position_taken?(board, 2)
#  return WIN_COMBINATIONS[5]
#elsif board[0] == board[4] && board[8] == board[0] && position_taken?(board, 0)
#  return WIN_COMBINATIONS[6]
#elsif board[2] == board[4] && board[6] == board[2] && position_taken?(board, 2)
#  return WIN_COMBINATIONS[7]
#else
#  return false
#end
#end
