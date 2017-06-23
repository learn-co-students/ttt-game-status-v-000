board = ["X", " ", " ", " ", " ", " ", " ", " ", " "]
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
# Helper Method
def is_empty?(board)
  index = 0
  while index < 9
    if position_taken?(board, index)
       index =+ 1
       puts "Space #{index} taken"
    end
  end
is_empty?(board)
end
