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

def empty?(board)
  board.all? {|x| x == " "}
end

def full?(board)
  !board.include?(" ")
end

def won?(board)
  index = 0
  loop do
    if empty?(board)
      return false
    elsif index > 7
      return false
    elsif board[WIN_COMBINATIONS[index][0]] == "X" && board[WIN_COMBINATIONS[index][1]] == "X" && board[WIN_COMBINATIONS[index][2]] == "X"
      return WIN_COMBINATIONS[index]
    elsif board[WIN_COMBINATIONS[index][0]] == "O" && board[WIN_COMBINATIONS[index][1]] == "O" && board[WIN_COMBINATIONS[index][2]] == "O"
      return WIN_COMBINATIONS[index]
    else
      index += 1
    end
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board).is_a?(Array) || draw?(board) == true
    return true
  elsif won?(board) == false && full?(board) == false
    return false
  end
end

def winner(board)
  if won?(board).is_a?(Array) && board[won?(board).last] == "X"
    return "X"
  elsif won?(board).is_a?(Array) && board[won?(board).last] == "O"
    return "O"
  else
    return nil
  end
end
