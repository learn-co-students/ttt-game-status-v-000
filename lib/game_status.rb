require 'pry'

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

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
def won?(board)
  #board.all?{|i| i == " " || i == "" || i == "X"}
  WIN_COMBINATIONS.detect do |win_combo|
    win_index_1 = win_combo[0]
    win_index_2 = win_combo[1]
    win_index_3 = win_combo[2]
    if board[win_index_1] == board[win_index_2] && board[win_index_2] == board[win_index_3] && board[win_index_1] != " "
      return win_combo
    end
  end
 return false
end

def full?(board)
  board.all?{|i| i == "X" || i == "O"}
 end


def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif !full?(board) && won?(board) || won?(board)
    return false
  end
end

def over?(board)
  if draw?(board) || won?(board)
    return true
  else
  end
end

def winner(board)
  if win_combo = won?(board)
    board[win_combo[0]]
  end
end
