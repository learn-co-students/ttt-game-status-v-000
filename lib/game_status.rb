# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

board = ["X", "X", "X", " ", " ", " ", " ", " ", " ",]

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # First column
  [1,4,7],  # Middle column
  [2,5,8],  # Last column
  [0,4,8],  # diagnoal one 
  [2,4,6]  # last diagnal 
]

def won?(board) 
  WIN_COMBINATIONS.each do |win_combination| 
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2] 
    position_3 = board[win_index_3] 
      if position_1 == "X" && position_2 == "X" && position_3 == "X"
        win_combination 
      elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
        win_combination 
      else
        false
   	end # end if
  end # end each
  false
end # end won?
