# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
	[0,1,2],
	[3,4,5],
	[6,7,8],
	[0,3,6],
	[1,4,7],
	[2,5,8],
	[0,4,8],
	[2,4,6]
]

#board = ["X", "O", "X", "X", " ", " ", "O", "O", "X"] #draw open brd
#board = ["X", "O", "X", " ", "X", " ", "O", "O", "X"] #x win open brd
#board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
#board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"] #draw
#board = ["X", "O", "X", "O", "X", "X", "O", "O", "X"] #x win

def won?(board)
	WIN_COMBINATIONS.detect do |win_combination|
		board1 = win_combination[0]
		board2 = win_combination[1]
		board3 = win_combination[2]
		board[board1] == board[board2] && board[board2] == board[board3] && board[board3] != " "
	end
end

def full?(board)
	full_array = board.select do |position|
		position == "X" || position == "O"
	end
	#puts "full array length is #{full_array.length}"
	if full_array.length == 9
		return true
	else
		return false
	end
end

def draw?(board)
	!won?(board) && full?(board)
end

def over?(board)
	won?(board) || full?(board) || draw?(board)
end

def winner(board)
	my_array = won?(board)
	if my_array.nil? == true
		return
	else
		my_array.each do |position|
			pos = position[0]
			marker = board[pos]
			return marker
		end
	end
end
