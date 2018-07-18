# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row win
  [3,4,5], # middle row win
  [6,7,8], # bottom row win
  [0,3,6], # left column win
  [1,4,7], # middle column win
  [2,5,8], # right column win
  [0,4,8], # left diagonal win
  [2,4,6]  # right diagonal win
  ]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]
  
  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3
  
  if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
    return win_combination
    end
  end
  return false
end

def full?(board)
  board.each do |i|
    if i == "" || i == " " || i == nil
      return FALSE
    end
  end
end

def draw?(board)
  won?(board) == FALSE
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  combination = won?(board)
  if(combination)
    if(board[combination[0]] =='X') 
      return 'X'
    else 
      return 'O'
    end
  else
    nil
  end
end