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
  [2,4,6],
]

def won?(board)
  WIN_COMBINATIONS.each do |win_array|
    if board[win_array[0]] == "X" && board[win_array[1]] == "X" && board[win_array[2]] == "X" ||
      board[win_array[0]] == "O" && board[win_array[1]] == "O" && board[win_array[2]] == "O"
      return win_array
    end
  end
  false
end

def full?(board)
  board.all? {|index| index == "X" || index == "O" }
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  else
    return false
  end
end

def over?(board)
  # if any of the below are true, will return true. Else returns false by default
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if won?(board)
    win_array = won?(board)
    board[win_array[0]]
  else
    nil
  end
end
