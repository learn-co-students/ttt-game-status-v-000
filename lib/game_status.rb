WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]  # Middle row
  # ETC, an array for each win combination
]

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
def won?(board)
  WIN_COMBINATIONS.find {|win_combination| board[win_combination[0]] == board[win_combination[1]] && board[win_combination[1]] == board[win_combination[2]] && position_taken?(board, win_combination[0])}
end

def full?(board)
  # is to check if there are any empty spaces
  board.all? do |position|
  position == "X" || position =="O" # Will evaluate to true for 1, true for 3
end
end

def draw?(board)
  !won?(board) && full?(board)
end


def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if win_combo = won?(board) # win_combo is equal to [0,1,2]
    # we have the board that gives us our "X" and "O"
    # won?(board) is the array returned by the method call
    return board[win_combo[0]]#FIX LATER
  end
end
