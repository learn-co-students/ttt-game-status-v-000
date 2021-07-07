# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], # top_row
  [3,4,5], # middle_row
  [6,7,8], # bottom_row
  [0,3,6], # left_column
  [1,4,7], # center_column
  [2,5,8], # right_column
  [0,4,8], # left_diagonal
  [6,4,2]  # right_diagonal
]

def won?(board)
  combo = 0
  while combo < WIN_COMBINATIONS.length
    current_combo = WIN_COMBINATIONS[combo]

    win1 = current_combo.all? { |position| board[position] == "X" }
    win2 = current_combo.all? { |position| board[position] == "O" }

    if win1 == true || win2 == true
      return current_combo
    else
      false
    end
    combo += 1
  end
end

def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end    
  
def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board)
    return false
  else won?(board)
    return false
  end
end 

def over?(board)
  if draw?(board) || won?(board) || full?(board)
    return true
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end
  