board = [" "," "," "," "," "," "," "," "," "]
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    if (position_1 == "X" && position_2 == "X" && position_3 == "X")||(position_1 == "O" && position_2 == "O" && position_3 == "O")
      return win_combination
    end
  end
  return false
end

def full?(board)
  !board.include?(" ")
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif won?(board) == true
    return false
  end
end

def over?(board)
  if draw?(board) || won?(board) || full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  # if won?(board)
  # win_combination = won?(board)
	# position_1 = win_combination[0]
	# position_2 = win_combination[1]
	# position_3 = win_combination[2]
  #
	#   if board[position_1]== "X" && board[position_2]=="X" && board[position_3] == "X"
	#     return "X"
	# 	elsif board[position_1]== "O" && board[position_2]=="O" && board[position_3] == "O"
	#     return "O"
  #   end
  # end
  # return nil
  if win_combination = won?(board)
    board[win_combination[0]]
  end
end
