# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2], # Top throw
  [3, 4, 5], # Middle row 
  [6, 7, 8], # Bottom row
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
  
]


def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
 
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination

    end 
  end
  return false 
end


def full?(board)
  board.all? do |index|
    index == "X" || index == "O"
   end  
  
end


def draw?(board)
  if won?(board) == false && full?(board) == true 
    return true
  end 
  false
end


def over?(board)
  won?(board) || full?(board) 
end
  

def winner(board)
  if won?(board) == false
    nil
  else
    x = won?(board)[0]
    if board[x] == "X"
      "X"
    else
      "O"
    end
  end
end