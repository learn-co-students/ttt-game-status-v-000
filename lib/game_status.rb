# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #Left column
  [1,4,7], #Middle column
  [2,5,8], #Right column
  [0,4,8], #Left to right diagonal
  [6,4,2], #Right to left diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    pos_1 = board[win_combination[0]]
    pos_2 = board[win_combination[1]]
    pos_3 = board[win_combination[2]]
   if (pos_1 == "X" && pos_2 == "X" && pos_3 == "X") || (pos_1 == "O" && pos_2 == "O" && pos_3 == "O")
     return win_combination
   end
end
return false
end

def full?(board)
  if board.detect {|i| i == " " || i == nil}
    return false
  else
    return true
  end
end

def draw?(board)
  won?(board) == false && if full?(board) == true
    return true
end
end

def over?(board)
  if draw?(board) || won?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if win_combination = won?(board)
  #return first item in the win_combination array
  board[win_combination.first]
  end
end
