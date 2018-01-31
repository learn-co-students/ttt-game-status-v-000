# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # bottom row
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [2,4,6],
  [0,4,8]

]

def won?(board)
  WIN_COMBINATIONS.find do |i|
    win_index1 = i[0]
  	win_index2 = i[1]
  	win_index3 = i[2]

  	pos_1 = board[win_index1]
  	pos_2 = board[win_index2]
  	pos_3 = board[win_index3]

  	if pos_1 == "X" && pos_2 == "X" && pos_3 == "X" || pos_1 == "O" && pos_2 =="O" && pos_3 == "O"
      i
    end
  end
end

def full?(board)
  if board.include?(" ")
    false
  else
    true
  end
end

def draw?(board)
  if full?(board) == true  && won?(board) == nil
    true
  else
    false
  end
end

def over?(board)
  if full?(board) == true || draw?(board) == true || won?(board) == true
    true
  end
end

def winner(board)

  if test = won?(board)
    win_index = test[0]
    if board[win_index] == "X"
      "X"
    else
      "O"
    end 
  else
    nil
  end
end
