# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [2,5,8],
  [0,4,8],
  [2,4,6],
  [1,4,7]
]# Define your WIN_COMBINATIONS constant
def won?(board)
  WIN_COMBINATIONS.each do|win_combination|
  position_1=board[win_combination[0]]
  position_2=board[win_combination[1]]
  position_3=board[win_combination[2]]
  if position_1=="X"&&position_2=="X"&&position_3=="X"||position_1=="O"&&position_2=="O"&&position_3=="O"
    return win_combination
  else
    false
  end
end
return false
end
def full?(board)
  WIN_COMBINATIONS.each do|win_combination|
  position_1=board[win_combination[0]]
  position_2=board[win_combination[1]]
  position_3=board[win_combination[2]]
  if (position_1=="X"||position_1=="O") && (position_2=="X"||position_2=="O") && (position_3=="X"||position_3=="O")
    return true
  else
    return false
  end
end
end
def draw?(board)
  if full?(board) && !won?(board)
    true
  else
    false
  end
end
def over?(board)
  if full?(board) || won?(board) || draw?(board)
    true
  else
    false
  end
end
def winner(board)
  WIN_COMBINATIONS.each do|win_combination|
  position_1=board[win_combination[0]]
  position_2=board[win_combination[1]]
  position_3=board[win_combination[2]]
  if position_1=="X"&&position_2=="X"&&position_3=="X"
    return "X"
  else
    if position_1=="O"&&position_2=="O"&&position_3=="O"
      return "O"
    else
      false
    end
  end
end
return nil
end
