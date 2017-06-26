def player_at_position(player, index)
  if player.even?
    X_position[index]
  else
    O_position[index]
  end
end

X_position = [ true, true, true ]
O_position = [ false, false, false ]
player = 0
index = 0
