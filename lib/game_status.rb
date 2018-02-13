# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #Left column
  [1,4,7], #Middle column
  [2,5,8], #Right column
  [0,4,8], #Left start diagonal
  [2,4,6]  #Right start diagonal
]

def won?(board)
  !array = []

  win_index_1 = win_combination [0]
  win_index_2 = win_combination [1]
  win_index_3 = win_combination [2]
  win_index_4 = win_combination [3]
  win_index_5 = win_combination [4]
  win_index_6 = win_combination [5]
  win_index_7 = win_combination [6]
  win_index_8 = win_combination [7]
  win_index_9 = win_combination [9]
  
if position_1 == "X" && position_2 == "X" &&      position_3 == "X" && position_4 == "X" &&  position_5 == "X" && position_6 "X" && position_7 == "X" && position_8 "X" && postion_9 == "X"
  return win_combination
else 
  false 
end 
end 
 
 
 
 
 
 
 
 
 
 
  
  
  
