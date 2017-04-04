WIN_COMBINATIONS = [[0, 1, 2],[3, 4, 5],[6, 7, 8],[0, 3, 6],[1, 4, 7],[2, 5, 8],[0, 4, 8],[2, 4, 6]]

def won?(board)
  # converts empty spaces for nil to string character for comparison
  board.each do |space|
    if space == "nil" || space == "" || space == " "
      space = "-"
    end
  end
  # iterate through each array of win combinations
  WIN_COMBINATIONS.each do |array|
    # create a string of board values for winning combinations
    win_combo = board[array[0]] + board[array[1]] + board[array[2]]
		# call winner method to determine winner
		winner(board)
    # compare board string value to winning game values
    if win_combo == "XXX" || win_combo == "OOO"
      # return the win_combination indexes that won
      return array
    end
  end
  # return false for non-winning boards
  return false
end


def position_taken?(board, index) # tested and working
  if board[index] == "X" || board[index] == "O"
    return true
  end
end

def full?(board)
    board.each do |value|
    if value == "X" || value == "O"
      true
    else
      return false
    end
  end
	true
end

def draw?(board) # tested and working
   if won?(board) == false && full?(board) == true
		puts "This game is a draw!"
	 	true
	 end
end


def winner(board)
  WIN_COMBINATIONS.each do |array|
    win_combo = board[array[0]] + board[array[1]] + board[array[2]]
	  return "X" if win_combo == "XXX"
	  return "O" if	win_combo == "OOO"
  end
	nil
end

def over?(board)
  if won?(board) == true || full?(board) == true
    return true
  else
    false
  end
end
