# Helper Method
require "pry"
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
         return win_combination
    end
  end
else
  return false
end

def full?(board)
  board.all? do |positions|
  if  positions == "X" || positions == "O"
     true
  else
     false
  end
  end
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    true
  elsif won?(board) == false && full?(board) == false
    false
  else
    false
  end
end

# def over?(board)
#   if draw?(board) == true
#     true
# elsif full?(board) == true
#   true
# elsif  won?(board) == true && full?(board) == false
#   true
#   end
# end
def over?(board)
  if full?(board) == false && won?(board) == false && draw?(board) == false
    false
  else
    true
  end
end


# # Works with O but returns nil for X and O for nil
# def winner(board)
#   board.detect do |win_combination|
#     if win_combination == "X"
#       win_combination
#     end
#   end
#   board.detect do |win_combination|
#     if win_combination == "O"
#       win_combination
#     end
#   end
#  end

# returns X X X or X O O O X
 def winner(board)
 #   board.select do |win_combination|
 #     if win_combination == "X"
 #      win_combination
 #    elsif win_combination == "O"
 #      win_combination
 #    else
 #     nil
 #   end
 # end
combo = won?(board)
  if combo
    # binding.pry
    board[combo[0]]
  end
end

# #returns winner combo with empty spaces
# def winner(board)
#    won?(board) == true
#     board.select do |token|
#       if token == "X"
#       "X"
#     else
#       "O"
#     end
#   end
# end
