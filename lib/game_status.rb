# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  WIN_COMBINATIONS.find {|win_combination|
  board[win_combination[0]] == board[win_combination[1]] && board[win_combination[0]] == board[win_combination[2]] && position_taken?(board, win_combination[0])
}
end

def full?(board)
if board.include?(' ') || board.include?('')
  return false
else
    return true
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else !won?(board) && !full?(board)
    return false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
    end
end

def winner(board)
  if won?(board) != nil
    winner = board[won?(board)[0]]
end
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]
