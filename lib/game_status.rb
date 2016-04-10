# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
	WIN_COMBINATIONS.select do |win_combination|
		if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X"
		return win_combination
		elsif board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
		return win_combination	
		end
	end
	if board.all?{|position| position == " "}
		false
	end
end

def full?(board)
	board.none?{|position| position == " "}
end

def draw?(board)
	if full?(board) && !won?(board)
		true
	end
end

def over?(board)
	if full?(board) || won?(board)
		true
	end
end

def winner(board)
	WIN_COMBINATIONS.select do |win_combination|
		if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X"
		return "X"
		elsif board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
		return "O"
		end
	end
	if !won?(board)
		nil
	end
end