# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row horizontal, WIN_COMBINATIONS[0] IN OTHER WORDS THIS IS THE SAME AS COMBO[0]
  [3,4,5], #middle row horizontal COMBO[0] == 3
  [6,7,8], #bottom row horizontal
  [0,3,6], #left-side vertical
  [1,4,7], #middle vertical
  [2,5,8], #right-side vertical
  [2,4,6], #diagonal win 1
  [0,4,8], #diagonal win 2
]


def won?(board)
  WIN_COMBINATIONS.find do |combo|
    if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X"
      true
    elsif board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
      true
    else
      false
    end
  end
end

def full?(board)
  board.none? do |check|
    if check == " "
    true
    end
  end
end

def draw?(board) #This will return true if the board is full and there is no win
  if full?(board) && !won?(board)
    true
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  end
end

def winner(board)
  WIN_COMBINATIONS.find do |combo|
    if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X"
    return "X"
    elsif board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
    return "O"
    end
  end
end
