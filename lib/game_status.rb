# Helper Method

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
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

 def won?(board)
  WIN_COMBINATIONS.each do |arr|
    if board[arr[0]] != " " && board[arr[0]] == board[arr[1]] && board[arr[1]] == board[arr[2]]
      return arr
    end
  end
  return false
end

def full?(board)
  !board.any? { |a| (a == " ") }
end

def draw?(board)
  if won?(board)
    return false
  end
  if !won?(board)
    full?(board) ? true : false
  end
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  winning_arr = won?(board)
  if winning_arr
    board[winning_arr[0]]
  else
    nil
  end
end
