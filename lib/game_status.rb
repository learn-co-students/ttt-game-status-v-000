# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,4,8], # Top Left to Bottom right diagonals
  [2,4,6], # Top right to bottom left diagonals
  [1,4,7], # Middle Up/Down
  [0,3,6], # Left Up/Down
  [2,5,8]  # Right Up/Down
]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(board, combo[0])
  end
end

def full?(board)
  board.all? do |combo|
    if combo == "X" || combo == "O"
      true
    end
  end
end

def draw?(board)
  (!won?(board) && full?(board))?  true : false
end

def over?(board)
  (won?(board) || draw?(board) || full?(board))? true : false
end

def winner(board)
  winner_token = won?(board)
  (winner_token)? board[winner_token[0]] : nil
end
