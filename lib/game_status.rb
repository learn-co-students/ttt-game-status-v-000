require 'pry'

WIN_COMBINATIONS = [
  [0, 1, 2], # top row  index =  0
  [3, 4, 5], # middle row
  [6, 7, 8], # bottom row
  [0, 3, 6], # left columns
  [1, 4, 7], # middle columns
  [2, 5, 8], # right columns
  [0, 4, 8], # Ltop Rbottom diagonals
  [6, 4, 2] # Rtop Lbottom diagonal
]
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    # win_index_1 = combo[0]
    # win_index_2 = combo[1]
    # win_index_3 = combo[2]
    # position_1 = board[win_index_1]
    # position_2 = board[win_index_2]
    # position_3 = board[win_index_3]
    # board.detect{position_1 == "X" && position_2 == "X" and position_3 == "X"}
    if board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && (board[combo[0]] == 'X' || board[combo[0]] == 'O')
      #binding.pry
      return combo
    end
  end
  false
end

def full?(board)
  board.each do |i|
    if i == " " || i == ""
      return false
    end
  end
end

def draw?(board)
  if won?(board) == false && full?(board) != false
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) != false || full?(board) != false || draw?(board) == true
    return true
  end
  false
end
