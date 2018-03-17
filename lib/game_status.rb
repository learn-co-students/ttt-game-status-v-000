# Helper Method
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


# def won?(board)
# board_collection = board.each_index.select {|i| board[i] == "X"}
# if WIN_COMBINATIONS.each { |element| (element-board_collection).empty?} == true
#
#
#   return element
# else
#   return false
# end
# end


def won?(board)

board_collection_X = board.each_index.select {|i| board[i] == "X"}
board_collection_O = board.each_index.select {|i| board[i] == "O"}
WIN_COMBINATIONS.each do |element|
  return element if (element-board_collection_X).empty? || (element-board_collection_O).empty?

end
return false
end

def full?(board)
  if board.include?(" ")
return false
else
  return true
end
end

def draw?(board)
  full?(board) && !won?(board)
end


def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  if winner_X_Y = won?(board)
    board[winner_X_Y.first]
  end
end


# def draw?(board)
# if
# if counter == 5
# counter = board.count { |element| element == "X"}
#   return true
# else
#   return false
# end
# end
