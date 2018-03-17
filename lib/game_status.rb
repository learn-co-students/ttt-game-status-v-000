# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def won?(board)
  WIN_COMBINATIONS.find do |win_combo|
	if board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X"
        return win_combo
    elsif board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O"
        return win_combo
    else
      false
  	end
  end
end

def full?(board)
if board.include?(" ")
  false
else
  true
  end
end

def draw?(board)
if full?(board) && !(won?(board))
    true
  end
end

def over?(board)
  if won?(board) or full?(board)
    true
  end
end

def winner(board)
  WIN_COMBINATIONS.find do |win_combo|
	if board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X"
        return "X"
    elsif board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O"
        return "O"
    else
  	end
  end
end
