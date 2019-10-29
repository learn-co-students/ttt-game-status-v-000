# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # From index 0 straight down left
  [1,4,7], # From index 1 straight down center
  [2,5,8], # From index 2 straight down right
  [2,4,6], # From index 0 diagonal to index 8
  [0,4,8], # From index 2 diagonal to index 6
]

def won?(board)
    WIN_COMBINATIONS.detect do |win_combination| #review .detect method
        position_taken?(board, win_combination[0]) && (board[win_combination[0]] == board[win_combination[1]]) && (board[win_combination[1]] == board[win_combination[2]])
    end
end

def full?(board)
  WIN_COMBINATIONS.all? do |turn| #review .all method
    position_taken?(board, turn[0])
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  end
end

def over?(board)
  if full?(board) || won?(board) || draw?(board)
    return true
  end
end

def winner(board)
    WIN_COMBINATIONS.detect do |winner|
        if position_taken?(board, winner[0]) && board[winner[0]] == "X" && board[winner[1]] == "X" && board[winner[2]] == "X"
            return "X"
        elsif position_taken?(board, winner[0]) && board[winner[0]] == "O" && board[winner[1]] == "O" && board[winner[2]] == "O"
            return "O"
        end
    end
end

# Needs review for understanding concepts. Review Lab and prior readings.
