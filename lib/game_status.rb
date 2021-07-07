# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
  [0,3,6], # left row
  [1,4,7], # vertical middle row
  [2,5,8], # right row
  [0,4,8], # top left diag
  [2,4,6]  # top right diag
  ]


def won?(board)
  WIN_COMBINATIONS.each do |winner|
  if board[winner[0]] == board[winner[1]] &&
       board[winner[1]] == board[winner[2]] && 
       position_taken?(board, winner[0])
       return winner
    end
end
false
end

def full?(board)
 board.any? do |empty|
   if empty == " "
     return false
  end
end
true
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board) == true
    return true
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
end
end