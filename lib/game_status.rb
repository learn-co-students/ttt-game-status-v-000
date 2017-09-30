# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combos|
    if position_taken?(board, win_combos[0]) && board[win_combos[0]] == board[win_combos[1]] && board[win_combos[1]] == board[win_combos[2]]
      return win_combos
    else
    end
  end
  nil
end

def full?(board)
  board.all? do |positions|
    positions == "O" || positions == "X"
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || full?(board) || won?(board)
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  end
end

# Define your WIN_COMBINATIONS constant
