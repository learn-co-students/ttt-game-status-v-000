# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # Left diagonal
  [2,4,6]  # Right diagonal
]


def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    if win_combination.all? {|index| board[index] == "X"}
      return win_combination
    elsif win_combination.all? { |index| board[index] == "O"}
      return win_combination
    else
      false
    end
  end
end


def full?(board)
board.none? { |board| board == "" || board == " " || board == nil }
end


def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end


def over?(board)
  if draw?(board) || won?(board) || full?(board)
    return true
  else
    return false
  end
end


def winner(board)
  if won?(board)
    win_check = won?(board)
    return board[win_check[0]]
  else
    return nil
  end
end
