# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
  i = 0
  empty = true
  while i < board.length
    if board[i] == "X" || board[i] == "O"
      empty = false
    end
    i += 1
  end
  if empty == true
    return false
  end
  WIN_COMBINATIONS.each do |win_arr|
    if position_taken?(board, win_arr[0]) && board[win_arr[0]] == board[win_arr[1]] && board[win_arr[1]] == board[win_arr[2]]
      return win_arr
    end
  end
  return false
end

def full?(board)
  if board.any? { |e| e == " " }
    return false
  else
    return true
  end
end

def draw?(board)
  if full?(board) && !won?(board)
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
  if won?(board)
    win_arr = won?(board)
    return board[win_arr[0]]
  end
end
