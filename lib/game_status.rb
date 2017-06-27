board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
player_at_position = [" ", " ", " "]
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
	def position_taken?(board, index)
	  !(board[index].nil? || board[index] == " ")
	end
  # Helper Method
  def is_empty?(board)
    index = 0
    while index < 9
      if position_taken?(board, index)
         index =+ 1
      end
      break
    end
  end
	# Helper Method
	def winning_combination?(board)
		WIN_COMBINATIONS.each do |win|
	  	win.each do |win_index|
	    	player_at_position.insert(win_index, board[win_index])
			end
		end
		if player_at_position[0] == "X" && player_at_position[1] == "X" && player_at_position[2] == "X"
			break
	end
	is_empty?(board)
	winning_combination?(board)
end
won?(board)
