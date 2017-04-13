# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    wins_x = []
    wins_o = []
    combo.each do |check|
      if board[check] == "X"
        wins_x << check
        if wins_x.count == 3
          return wins_x
        end
      elsif board[check] == "O"
        wins_o << check
        if wins_o.count == 3
          return wins_o
        end
      end
    end
  end
  return false
end

def full?(board)
  return board.all?{ |i| i.is_a?(String) && i != " "}
end

def draw?(board)
  return full?(board) && !won?(board)
end

def over?(board)
  return draw?(board) || won?(board)
end

def winner(board) #.upcase is not needed for tests but is good for unknown input value as we don't check this yet.
  if won?(board) && board.count{|x| x.upcase == "X"} > board.count{|o| o.upcase == "O"}
    return "X"
  elsif won?(board) && board.count{|x| x.upcase == "X"} < board.count{|o| o.upcase == "O"}
    return "O"
  end
  return nil
end
