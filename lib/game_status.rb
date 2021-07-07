# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS=
[
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]
  
def won?(board)
  WIN_COMBINATIONS.each do |wc_oa|     
    #win comb outer array wc_oa
   w_x = wc_oa.all?{|i| board[i] =="X"}
   w_o = wc_oa.all?{|i| board[i] =="O"}
     if w_x == true || w_o == true
       return wc_oa
     end
  end
  return nil
end

def full?(board)
  board.all?{|i| i=="X"||i=="O"}
end

def draw?(board)
  if  full?(board) == true && won?(board)==nil
  true
  else
  false
  end
end

def over?(board)
  if won?(board) != nil || draw?(board)==true || full?(board) == true
  true
  else
  false
  end
end

def winner(board)
  if won?(board) != nil
    arr_1 = won?(board)
    x = arr_1[0]
    return board[x]
  else
    return nil
  end
end
