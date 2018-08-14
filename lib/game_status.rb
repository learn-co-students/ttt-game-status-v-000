# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS  = [
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
  WIN_COMBINATIONS.each do |win_combo|
    if (board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X") ||
      (board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O")
      return win_combo
    end
  end
  return false
end

def full?(board)
  board.none?{|index| (index == " " || index == "")}
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  end
  return false
end

def over?(board)
  if draw?(board) == true || !won?(board) == false || full?(board) == true
    return true
  else
    return false
end
end

def winner(board)
  win_combo = []
  win_combo = won?(board)
  if win_combo == false
    return nil
  elsif board[win_combo[0]] == "X"
    return "X"
  elsif board[win_combo[0]] == "O"
    return "O"
  end
end
