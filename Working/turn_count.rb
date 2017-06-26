board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def turn_count (board)
	board.count{|token| token == "x" || token == "O"}
	# Should return 0
end
