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
  WIN_COMBINATIONS.select do |combination|
  win_index_1 = combination[0]
  win_index_2 = combination[1]
  win_index_3 = combination[2]
  
  
  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]
  
  if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O" 
    return combination
  else
    false
  end
  end
  false
end

def full?(board)
  board.select do |state| 
   if state == " "
    return false
   end
  end
end

def draw?(board)
  if !(won?(board)) && full?(board)
    return true
  else
    false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    false
  end
end

def winner(board)
  if !(won?(board))
    return nil
  else
  won?(board).detect do |array|
    return board[array]
  end
end
end