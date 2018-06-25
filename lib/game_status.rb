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
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_set|
    if win_set.all? {|win_position| board[win_position] == "X"} || win_set.all? {|win_position| board[win_position] == "O"}
      return win_set
    elsif board.all? {|win_position| win_position == " "} || board.all? {|win_position| win_position == ""}
      false
    end
  end
  false
end

def full? (board)
WIN_COMBINATIONS.each do |win_set|
  if win_set.none? {|win_position| board[win_position] == " "}
return true
else
return false
end
end
end

def draw? (board)
WIN_COMBINATIONS.each do |win_set|
if win_set.all? {|win_position| board[win_position] != "X"} && win_set.all? {|win_position| board[win_position] != "O"} && win_set.none? {|win_position| board[win_position] != " "}
  return true
elsif win_set.all? {|win_position| board[win_position] != "X"} || win_set.all? {|win_position| board[win_position] != "O"}
  return false
end
end
end

def over? (board)
if draw?(board)
  return true
elsif won?(board) && full?(board)
  return true
elsif won?(board) && !full?(board)
  return true
elsif !won?(board) && !full?(board)
  return false
end
end

def winner(board)
WIN_COMBINATIONS.each do |win_set|
if win_set.all? {|win_position| board[win_position] == "X"} && over?(board)
    return "X"
  elsif win_set.all? {|win_position| board[win_position] == "O"} && over?(board)
    return "O"
  elsif !won?(board) && over?(board)
    return nil
end
end
end
