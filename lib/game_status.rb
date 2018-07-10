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

  full?(board) ==["X", "O", "X", "O", "X", "X", "O", "X", "O"]
  full?(board).each do |token|
     return true
   end
    return false
  end


  def draw?(board)

    draw?(board) == ["X", "O", "X", "O", "X", "X", "O", "X", "O"]

    if draw?(board) 
















  #
