require "pry"
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [2,5,8],
  [6,4,2],
  [0,3,6],
  [1,4,7],
  [0,4,8]
]

def won?(board)

empty_board = board.all? {|location| location == " "}
WIN_COMBINATIONS.detect do |sub_array|
 board[sub_array[0]] == board[sub_array[1]] && board[sub_array[1]] == board[sub_array[2]] && position_taken?(board, sub_array[0])
  #if sub_array.all? { |value| board[value] =="X" } || sub_array.all? { |value| board[value] =="O" }
  #    return sub_array
  #elsif empty_board || full?(board)
  #  return false
  #  end

end
end


def full?(board)
  !board.any? { |location| location == " " }
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if won?(board).nil?
    return nil
  end
  if board[won?(board).first] == "X"
    return board[won?(board).first]
  elsif board[won?(board).first] == "O"
return board[won?(board).first]

#  if winner = won?(board)
#    return board[winner.first]

  #if won?(board) && board[position_taken?(board, [0])] == "X"
  #  return "X"
  #elsif won?(board) && board[position_taken?(board, [0])] == "Y"
  #  return "Y"
  end
end
