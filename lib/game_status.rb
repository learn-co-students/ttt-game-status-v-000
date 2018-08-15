# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column
  [0,4,8], #left diagonal
  [2,4,6] #right diagonal
]
  
def won?(board)
  WIN_COMBINATIONS.each do |combo|
    
    index0 = combo[0]
    index1 = combo[1]
    index2 = combo[2]   
  
    position1 = board[index0]
    position2 = board[index1]
    position3 = board[index2]
  
    if position1 == "X" && position2 == "X" && position3 == "X"
      return combo
    elsif position1 == "O" && position2 == "O" && position3 == "O"
      return combo
    end
  end
    return false
end

def full?(board)
  board.all? { |index| index == "X" || index == "O" }
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  else
    false
  end
end

def over?(board)
  if draw?(board) || full?(board) || won?(board)
    true
  else
    false
  end
end

def winner(board)
  if won?(board) != false
    won = won?(board)
    player = won[0]
    return board[player]
  else
    nil
  end
end