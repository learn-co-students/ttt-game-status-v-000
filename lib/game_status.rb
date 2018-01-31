# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], # 1st row
  [3,4,5], # 2nd row
  [6,7,8], # 3rd row
  [0,3,6], # 1st column
  [1,4,7], # 2nd column
  [2,5,8], # 3rd column
  [0,4,8], # diagonal down
  [6,4,2]  # diagonal up

]

def won?(board)
  board.all? {|i| i != " " || i != ""}
  winning_streak = WIN_COMBINATIONS.detect do |win_array|
    if win_array.all? {|position| board[position] == "X"} == true
      winning_streak.inspect
    elsif win_array.all? {|position| board[position] == "O"} == true
      winning_streak.inspect
    end
  end
end

def full?(board)
  board.each do |index|
    if index != "X" && index != "O"
      return false
    end
  end
  return true
end

def draw?(board)
  if !(won?(board)) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  else
    return nil
  end
end
