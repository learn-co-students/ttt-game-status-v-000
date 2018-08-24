require 'pry'

WIN_COMBINATIONS = [
  [0, 1, 2], # Top row
  [3, 4, 5], # Middle row
  [6, 7, 8], # Bottom row
  [0, 3, 6], # Left column
  [1, 4, 7], # Middle column
  [2, 5, 8], # Right column
  [2, 4, 6], # Diagonal 1
  [0, 4, 8]  # Diagonal 2
]

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  WIN_COMBINATIONS.detect do |wincombo|
    board[wincombo[0]] == board[wincombo[1]] &&
    board[wincombo[1]] == board[wincombo[2]] &&
    position_taken?(board, wincombo[0])
  end
end

def full?(board)
  board.all? do |megatron|
    megatron == "X" || megatron == "O"
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

# def over?(board)
#   won?(board) || full?(board)
# end

def winner(board)
  winning_array = won?(board)
  if won?(board)
    return board[winning_array[0]]
  else
    return nil
  end
end
