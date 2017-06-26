board = ["X", "X", "X"]
player_at_position = [ " ", " ", " ", " ", " ", " ", " ", " ", " "]
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2]]

# Helper Method
def won?(board)

	WIN_COMBINATIONS.each do |win|
  	win.each do |win_index|
    	player_at_position(win_index) = board(win_index)
			if player_at_position(win_index) == "X" && player_at_position(win_index) == "X" && player_at_position(win_index) == "X"
				#return WIN_COMBINATIONS # return the win_combination indexes that won.
			else
				 puts false
			end
  	end
	end
end
won?(board)
