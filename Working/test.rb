board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
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
is_empty(board)
end


#Test Two
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

# won?()
def won?(board)
  counter = 0
  board.each do |player|
    if player == "X" || player == "O"
      counter += 1
    end
  end
  counter
end
