# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  #bottom row
  [0,3,6],  #left column
  [1,4,7],  #middle column
  [2,5,8],  #right column
  [0,4,8],  #right diagonal
  [2,4,6]  #left diagonal
]

def won?(board)
  # find will find any element if the condition is met or return false
WIN_COMBINATIONS.any? do |win_combination|
  if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X"
    return win_combination
  elsif board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
    return win_combination
  end
end
end

def full?(board)
  board.all? { |position| position == "X" || position == "O" }
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  end
end



def over?(board)
  # conditions automatically return true or false
  if draw?(board) || won?(board)
    true
  end
end


def winner(board)
  # ternary format: condition ? value if true : value if false
  # won?(board) returns an array or false
  # if won?(board) is not nil - we need to find a way to grab an index number from that array
  # we need to access the board with that index number we grabbed in order to return it's value
  if won?(board)
    board[won?(board)[0]] # won?(board)[0] won?(board) equals [0,1,2] - won?(board)[0] equals 0
  end
end
