require 'pry'
# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]

def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    return win_combo if win_combo.all? { |x| board[x] == 'X' }
    return win_combo if win_combo.all? { |x| board[x] == 'O' }
  end
  false
end

def full?(board)
  board.all? { |sq| sq == 'X' || sq == 'O'  }
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  winning_line = won?(board)
  return nil if !winning_line
  board[winning_line[0]]
end
