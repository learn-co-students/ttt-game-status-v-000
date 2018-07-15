# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], # Top Row
  [3,4,5], # Middle Row
  [6,7,8], # Bottom Row
  [0,3,6], # Left Column
  [1,4,7], # Middle Column
  [2,5,8], # Right Column
  [0,4,8], # Diagonal Top Left
  [2,4,6]  # Diagonal Top Right
]

def won?(board)
  WIN_COMBINATIONS.any? {|combo|
        if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X"
          return combo
        elsif board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
          return combo
        end
}
end

def full?(board)
  board.all? do |elements|
    elements == "O" || elements == 'X'
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    TRUE
  else
    FALSE
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    TRUE
  else
    FALSE
  end
end

def winner(board)
  if won?(board)
  position = won?(board)[0]
  winner = board[position]
  else
  nil
  end
  return winner
end