# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # 1st Column
  [1,4,7], # 2nd Column
  [2,5,8], # 3rd Column
  [0,4,8], # Diagonal 1
  [2,4,6]  # Diagonal 2
]

def won?(board)
  WIN_COMBINATIONS.select do |win_array|
    if board[win_array[0]] == board[win_array[1]] && board[win_array[0]] == board[win_array[2]] && position_taken?(board, win_array[0])
        return win_array
    end
  end
  return false
end

def full?(board)
  [1,2,3,4,5,6,7,8].all? do |index|
    position_taken?(board, index)
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if draw?(board) || full?(board) || won?(board)
    true
  end
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  end
end
