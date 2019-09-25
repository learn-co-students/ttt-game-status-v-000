# Helper Method

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def full?(board)
  board.all? {|el|  !(el.nil? || el == " ")}
end

def draw?(board)
  full?(board) && !won?(board) ? true : false
end

def over?(board)
  draw?(board) || won?(board) ? true  : false
end


def empty_board?(board)
  board.each_with_index do |el, i|
    if position_taken?(board, i)
      return false
    end
  end
  true
end

def won?(board)
  if empty_board?(board)
    return false
  end
  x_board = []
  board.each_with_index do |el, i|
    if el == "X"
      x_board << i
    end
  end
  o_board = []
  board.each_with_index do |el, i|
    if el == "O"
      o_board << i
    end
  end
  WIN_COMBINATIONS.detect  do |win_comb|
    win_comb.all? {|el| x_board.include?(el)} || win_comb.all? {|el| o_board.include?(el)}
  end
end

def winner(board)
  won?(board).nil? ? nil : board[won?(board)[0]]

end


# def x_board_rows(board)                        
#   x_board = []
#   board.each_with_index do |el, i|
#     if el == "X"
#       x_board << i
#     end
#   end
#   x_board
# end
#
# def o_board_rows(board)
#   o_board = []
#   board.each_with_index do |el, i|
#     if el == "O"
#       o_board << i
#     end
#   end
#   o_board
# end
