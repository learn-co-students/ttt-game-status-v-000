# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
	[0,1,2], #toprow
	[3,4,5], #middlerow
	[6,7,8], #bottomrow
	[0,3,6], #col1
	[1,4,7], #col2
	[2,5,8], #col3
	[0,4,8], #diag1
	[6,4,2]
]

def won?(board)
	WIN_COMBINATIONS.detect do |combo|
		if combo.all? {|position| board[position] == "X"}
			return combo
		elsif combo.all? {|position| board[position] == "O"}
			return combo
		else
			false
		end
	end
end 

def full?(board)
	board.each_index do |position|
		if !position_taken?(board, position.to_i)
			false
			break

		else
			true
		end
	end
end 

def draw?(board)
	if full?(board)
		 true
		if won?(board)
			false
		else
			true
		end
	else
		false
	end


end 

def over?(board)
	if full?(board) || won?(board) || draw?(board)
		true
	else
		false
	end
end

def winner(board)
	if won?(board)
		if board[won?(board)[0]] == "O"
			return "O"
		else
			"X"
		end
	end
end
