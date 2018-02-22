# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #1
  [3,4,5], #2
  [6,7,8], #3
  [0,3,6], #4
  [1,4,7], #5
  [2,5,8], #6
  [0,4,8], #7
  [2,4,6] #8 possible win scenarios
]

def won?(board)
  # board[x] compares to win_combos , and if win_combos[z] all == "x", then return the combo
  WIN_COMBINATIONS.each do |numarray|
    if board[numarray[0]] =="X" && board[numarray[1]] == "X" && board[numarray[2]] == "X" || board[numarray[0]] == "O" && board[numarray[1]] == "O" && board[numarray[2]] == "O"
      return numarray
    # else
    #   continue
    end
  end
  return false
end

def full?(board)
  board.any? do |empty|
    if empty == "" || empty == " "
      return false
    end
  end
    true
end

def draw?(board)
  if won?(board)
    return false
  end
  if full?(board) == false
    return false
  end
  true
end

def over?(board)
  if won?(board) != false || full?(board) == true
    return true
  end
  false
end

def winner(board)
  WIN_COMBINATIONS.each do |numarray|
    if board[numarray[0]] =="X" && board[numarray[1]] == "X" && board[numarray[2]] == "X" || board[numarray[0]] == "O" && board[numarray[1]] == "O" && board[numarray[2]] == "O"
      return board[numarray[0]]
    end
  end
  nil
end
