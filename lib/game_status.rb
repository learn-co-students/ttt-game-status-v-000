# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row win
  [3,4,5], #middle row win
  [6,7,8], #bottom row win
  [0,3,6], #left column win
  [1,4,7], #middle column win
  [2,5,8], #right column win
  [0,4,8], #left diagonal win
  [2,4,6] #right diagonal win
]

def won?(board)
  WIN_COMBINATIONS.detect do |position|
    if board[position[0]] == "X" && board[position[1]] == "X" && board[position[2]] == "X"
      position
    elsif board[position[0]] == "O" && board[position[1]] == "O" && board[position[2]] == "O"
      position
    else
      false
    end
  end
end

def full?(board)
  board.all? do |pos|
    pos == "X" || pos == "O"
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  elsif !full?(board) || !won?(board)
    false
  elsif !won?(board)
    false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    true
  else
    false
  end
end

def winner(board)
  winning_play = won?(board)
  if winning_play
    board[winning_play.first]
  end
end
