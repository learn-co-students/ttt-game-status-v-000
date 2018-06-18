# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8], 
  [6, 4, 2],
  [1, 4, 7],
  [0, 3, 6],
  [2, 5, 8]
  ]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination| 
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    win_index_4 = win_combination[3]
    win_index_5 = win_combination[4]
    win_index_6 = win_combination[5]
    win_index_7 = win_combination[6]
    win_index_8 = win_combination[7]
  
    position_1 = board[win_index_1] 
    position_2 = board[win_index_2]
    position_3 = board[win_index_3] 
   
    if position_1 == "X" && position_2 == "X" && position_3 == "X" ||
       position_1 == "O" && position_2 == "O" && position_3 == "O"
      
     return win_combination
    else 
      return false
    end
  end
end

def full?(board)
  board.all? do |full_board| 
    full_board == "X" || full_board == "O"
  end
end

def draw?(board)
  !won?(board) && full?(board)
end

  
