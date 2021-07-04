board = ["X", "X", "X"]
player_at_position = [" ", " ", " "]
WIN_COMBINATIONS = [[0,1,2]]

	WIN_COMBINATIONS.each do |win|
  	win.each do |win_index|
    	player_at_position.insert(win_index, board[win_index])
			end
	end
	if player_at_position[0] == "X" && player_at_position[1] == "X" && player_at_position[2] == "X"
	else
	end
