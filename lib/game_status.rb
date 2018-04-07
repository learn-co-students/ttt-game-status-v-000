#won Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  
  [0,3,6],
  [1,4,7],
  [2,5,8],
  
  [0,4,8],
  [2,4,6]
  ]
  
  #won?
  def won?(board)
  
    WIN_COMBINATIONS.each do |win| 
      win_index_1 = win[0]
      win_index_2 = win[1]
      win_index_3 = win[2]
      
      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]
    
      
      
    if position_1  == "X"  && position_2 == "X" && position_3 == "X"
    #if position_taken?(board, position_1) 
      #&& position_taken?(board, position_2) 
      #&& position_taken?(board, position_3)
      return win
    else
     #position_taken?(board, index)
     false
    end
  end
end
    