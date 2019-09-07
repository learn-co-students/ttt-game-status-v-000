#require "pry"

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  # Top row
  [3,4,5],  # Middle row horizontal
  [6,7,8],  # Bottom row
  [0,3,6],  # Left row vertical
  [1,4,7],  # Middle row vertical
  [2,5,8],  # Right row vertical
  [0,4,8],  # Diagonal Top left
  [2,4,6],  # Middle row vertical
]

def won?(board)
  WIN_COMBINATIONS.detect do |arr|
    board[arr[0]] == board[arr[1]] && board[arr[1]] == board[arr[2]] && position_taken?(board, arr[0])
  end
end

def full?(board)
  if board.any?{ |i| i == " " }
    return false
  else
    return true
  end
end

def draw?(board)
  # binding.pry
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  #binding.pry
  if won?(board)
    won?(board).each do |i|
      if board[i] == "X"
        return "X"
      elsif board[i] == "O"
        return "O"
      else
        return nil
      end
    end
  end
end
