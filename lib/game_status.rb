require 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]

def won?(board)
  win_matches = []
  WIN_COMBINATIONS.each do |arr|
    if (board[arr[0]] == "O" && board[arr[1]] == "O" && board[arr[2]] == "O") || (board[arr[0]] == "X" && board[arr[1]] == "X" && board[arr[2]] == "X")
      win_matches << arr
    end
  end
  if win_matches.empty?
    FALSE
  else
    win_matches[0]
  end
end

def full?(board)
  empty_board_spaces = []
  board.each do |e|
    if e == nil? || e == " "
      empty_board_spaces << e
    end
  end
  
  if empty_board_spaces.empty?
    TRUE
  else
    FALSE
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
  win_matches = []
  WIN_COMBINATIONS.each do |arr|
    if (board[arr[0]] == "O" && board[arr[1]] == "O" && board[arr[2]] == "O") || (board[arr[0]] == "X" && board[arr[1]] == "X" && board[arr[2]] == "X")
      win_matches << arr
    end
  end
  
  if win_matches.empty?
    nil
  else
    board[win_matches[0][0]]
  end
end



