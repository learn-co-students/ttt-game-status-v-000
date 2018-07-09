# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
 WIN_COMBINATIONS = [
                    [0,1,2], #top_row
                    [3,4,5], #mid_row
                    [6,7,8], #bot_row
                    [0,3,6], #left_row
                    [1,4,7], #mid_row
                    [2,5,8], #rig_row
                    [0,4,8], #di_1
                    [2,4,6]  #di_2
   ]

def won?(board)
  
  WIN_COMBINATIONS.each do |combo|
    win_in_1 = combo[0]
    win_in_2 = combo[1]
    win_in_3 = combo[2]
    
    pos_1 = board[win_in_1]
    pos_2 = board[win_in_2]
    pos_3 = board[win_in_3]
    if (pos_1 == "X" && pos_2 == "X" && pos_3 == "X") || (pos_1 == "O" && pos_2 == "O" && pos_3 == "O" )
      return combo
    end
  end
  return false
end

def full?(board)
  board.all? {|i| (i == "X" || i == "O")}
end

def draw?(board)
  if (won?(board) == false && full?(board) == true)
    true
  else
    false
  end
end

def over?(board)
  if draw?(board) || full?(board) || won?(board)
    true 
  end
end

def winner(board)
  if won?(board) 
    win_in = won?(board)[0] 
    winni = board[win_in]
    return winni
  else
    return nil
  end
end