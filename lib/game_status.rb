# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

# def won?(board)
#   WIN_COMBINATIONS.each do |set|
#     if board[set[0]] == "O" && board[set[1]] == "O" &&  board[set[2]] == "O" && !full?(board)
#       return set
#     elsif board[set[0]] == "X" && board[set[1]] == "X" &&  board[set[2]] == "X" && !full?(board)
#       return set
#     elsif board[set[0]] == "O" && board[set[1]] == "O" &&  board[set[2]] == "O" && full?(board)
#       return set
#     elsif board[set[0]] == "X" && board[set[1]] == "X" &&  board[set[2]] == "X" && full?(board)
#       return set
#     elsif board.all? {|item| item == " "} || board.all? {|item| item == ""}
#       return false
#     end
#   end
# end

def won?(board)
  position_1 = " "
  position_2 = " "
  position_3 = " "

  if WIN_COMBINATIONS.each do |set|
    position_1 = board[set[0]]
    position_2 = board[set[1]]
    position_3 = board[set[2]]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return set
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return set
    end
  end
else
  return false
end
end

def full?(board)
  if board.any?{|item| item == ""}
    return false
  elsif board.any?{|item| item == " "}
    return false
  else
    return true
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  elsif !won?(board) && !draw?(board)
    return false
  else
    return false
  end
end

def winner(board)
  if over?(board) && !draw?(board)
    return board[won?(board)[0]]
  else
    return nil
  # elsif board[won?(board)[0]] == "O" && over?(board) && !draw?(board)
  #   return "O"
  end
end
