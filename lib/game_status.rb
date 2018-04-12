require "pry"
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end
end

# def won?(board)
#   win = WIN_COMBINATIONS.select do |i|
#     i.all? { |index| board[index] == "X" } || i.all? { |index| board[index] == "O" }
#   end
#   if win == []
#     false 
#   else 
#     win[0]
#   end
# end

def full?(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  if board.any? {|z| z == " "}
    false 
  else
    true
  end
end

def draw?(board)
  won?(board) == false && full?(board) == true 
end

def over?(board)
  full?(board) || draw?(board) || won?(board)
end

def winner(board)
  if  won?(board) == "X"
    return "X"
    elsif won?(board) == "O"
    return "O"
  else
    nil
  end
end


