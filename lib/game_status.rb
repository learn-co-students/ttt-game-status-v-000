require 'pry'
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

  WIN_COMBINATIONS.each do |win_combo|
    win_index_1 = win_combo[0]
    win_index_2 = win_combo[1]
    win_index_3 = win_combo[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3]
  # load the value of the board at win_index_3

  if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combo
  end
end
    return false
end


def full?(board)
  board.all? {|space| space != " " }
  #board.all?{|token| token == "X" || token == "O"}

end

def draw?(board)
  full?(board) && !won?(board)
end


def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    return false
  end
end


def winner(board)
  win_combo = won?(board)

  if win_combo != false
    if board[win_combo[0]] == "X"
      return "X"
    else
      return "O"
    end
  else
    return nil
  end
end
