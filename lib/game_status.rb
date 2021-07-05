# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if (combo.all? {|n| board[n]=='X'}) or (combo.all?{|n| board[n]=='O'})
      return combo
    end
  end
return FALSE
end

def full?(board)
  [0,1,2,3,4,5,6,7,8].all?{|x| position_taken?(board,x)}
end

def draw?(board)
  (!(won?(board)) && full?(board)) ? (return TRUE) : (return FALSE)
end

def over?(board)
  won?(board) || draw?(board)||full?(board) ? (return TRUE) : (return FALSE)
end

def winner(board)
  if winning=won?(board)
    w=board[winning[0]]
    return w
  else
    return nil
  end
end
  
  
  

  
