def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
  
  ]
  
  def won?(board)
     WIN_COMBINATIONS.detect do |combo|
      if (board[combo[0]]) == "X" && (board[combo[1]]) == "X" && (board[combo[2]]) == "X"
        return combo
      elsif  (board[combo[0]]) == "O" && (board[combo[1]]) == "O" && (board[combo[2]]) == "O"
        return combo 
      else
        false
      end
    end
  end
  
  def full?(board)
    if board.include?(" ")
      return false
    else
      true
    end  
  end 
  
  def draw?(board)
    if full?(board) == true && !won?(board)
      return true
    else
      return false
    end
  end
  
  def over?(board)
    if draw?(board) || won?(board) || full?(board)
      return true
  end
end  
  
  def winner(board)
  if won?(board) != nil 
    board[won?(board).detect {|combo| board[combo] == "X" || board[combo] == "O"}]      
  elsif
    nil
  end 
end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  