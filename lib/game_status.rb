# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top Row
  [3,4,5], #Middle Row
  [6,7,8], #Bottom row
  [0,3,6], #First Column
  [1,4,7], #Second Column
  [2,5,8], #Third Column
  [0,4,8], #Left to right diaganol
  [2,4,6]  #Right to left diaganol
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] == board[combo[1]] && board[combo[0]] == board[combo[2]] 
      if board[combo[0]] == "X" || board[combo[0]] == "O"
        return combo
      end
    end
  end
  return false
end

def full?(board)
  board.each do |i|
    if i != "X" && i != "O"
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
  if won?(board) || full?(board) || draw?(board)
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