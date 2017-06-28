require 'pry'
# Define your WIN_COMBINATIONS constant
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

WIN_COMBINATIONS = [
						        [0,1,2],
						        [3,4,5],
						        [6,7,8],
						        [0,3,6],
						        [1,4,7],
						        [2,5,8],
						        [0,4,8],
						        [6,4,2]]
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
def won?(board)
	WIN_COMBINATIONS.find do |win|
	 board[win[0]] == board[win[1]] && board[win[0]] == board[win[2]] && board[win[0]] != " "
 end
end

# Helper Method
def full?(board)
	!board.include?( " " || nil )
end

# Helper Method
def draw?(board)
	full?(board) && !won?(board)
end

# Helper Method
def over?(board)
	draw?(board) || won?(board) || full?(board)
end

# Helper Method
    # return X when X won (FAILED - 1)
    # returns O when O won (FAILED - 2)
    # returns nil when no winner (FAILED - 3)
def winner(board)
	won?.find do |winner|
		winning_player = board[winner[0]]
		binding.pry 
	end
end
