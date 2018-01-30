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
  [2, 4, 6],
  [0, 3, 6], 
  [1, 4, 7],
  [2, 5, 8]
  ]
  
def won?(board)
  WIN_COMBINATIONS.find do |win_combo|
    board[win_combo[0]] == board[win_combo[1]] && board[win_combo[1]] == board[win_combo[2]] && position_taken?(board, win_combo[0])
  end
end

def full?(board)
  board.all? do |token|
    if (token == "X" || token == "O")
    true 
    else 
    false 
    end
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  elsif (!full?(board) && !won?(board)) || (won?(board))
    false
  end
end

def over?(board)
  if (won?(board) || draw?(board) || full?(board)) || (won?(board) && !full?(board))
    true
  elsif (!won?(board) || !draw?(board) || !full?(board))
    false
  end
end

def winner(board)
  if won?(board) == nil
    nil 
  elsif board[won?(board)[0]] == "X"
    "X"
  elsif board[won?(board)[0]] == "O"
    "O"
  end
end
