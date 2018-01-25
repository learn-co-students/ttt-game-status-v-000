# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def won?(board)
  WIN_COMBINATIONS.find do |win_array|
    board[win_array[0]] == board[win_array[1]] && board[win_array[1]] == board[win_array[2]] && position_taken?(board, win_array[0])
  end
end

def full?(board)

  board.all? do |character|
    character == "X" || character == "O"
  end
end

def draw?(board)

  if !won?(board) && full?(board)
    true
  elsif !won?(board) && !full?(board)
    false
  else
    false
  end
end

def over?(board)

  if draw?(board) || full?(board) && won?(board) || won?(board) && !full?(board)
    true
  else
    false
  end
end

def winner(board)

  if won?(board) && board[won?(board)[0]] == "X"
    return "X"
  elsif won?(board) && board[won?(board)[0]] == "O"
    return "O"
  else
    return nil
  end

end
