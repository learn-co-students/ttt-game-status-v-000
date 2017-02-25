# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [2, 4, 6],

]


def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X" ||
    board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O"
  end
end


def full?(board)
  !board.any? { |spaces| spaces == " " || spaces == nil }
end

def draw?(board)
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
  winner = won?(board)

  if winner.nil?
    nil
  elsif board[winner[0]] == "X"
    return "X"
  elsif board[winner[0]] == "O"
    return "O"
  end

end
