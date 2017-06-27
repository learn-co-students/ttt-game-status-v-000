board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]

win_combination = [ 0, 1, 2]
win_index = [ 0, 1, 2]

def win(win_combination)
  counter = 0
  while counter < 3
    win_index[counter] << win_combination[counter]
    player_at_position[counter] << board[win_index[counter]]
    counter += 1
  end

  if player_at_position[0] == "X" && player_at_position[1] == "X" && player_at_position[2] == "X"
    return
  else
    false
  end

end

win(win_combination)
#a.at(0)
