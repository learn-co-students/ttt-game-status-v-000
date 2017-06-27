board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
						            [0,1,2],
						            [3,4,5],
						            [6,7,8],
						            [0,3,6],
						            [1,4,7],
						            [2,5,8],
						            [0,4,8],
						            [6,4,2]
																]
# Helper Method
def won?(board)
	# Helper Method
		WIN_COMBINATIONS.each do |win|
	  	win.each do |win_index|
	    	player_at_position.insert(win_index, board[win_index])
			end
			if player_at_position[0] == "X" && player_at_position[1] == "X" && player_at_position[2] == "X"
			else
				nil
			end
		end
	end
end
won?(board)

def won?(board)
	WIN_COMBINATIONS.find do |win|
	 board[win[0]] == board[win[1] && board[win[0]] == board[win[2]]
 end
end
