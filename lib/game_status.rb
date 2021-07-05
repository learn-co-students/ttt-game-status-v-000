require 'pry'

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [6, 4, 2]]

def won?(board)
  WIN_COMBINATIONS.find do |win_combo|
    board[win_combo[0]] == board[win_combo[1]] && board[win_combo[2]] == board[win_combo[1]] && board[win_combo[1]] != " "
  end
end

def full?(board)
  if board[0-8] != " "
    true
  end
end

def draw?(board)
  !won?(board)
end

def over?(board)
  if full?(board) || won?(board)
    true
  end
end

def winner(board)
  won?(board) ? board[won?(board).first] : nil
end
