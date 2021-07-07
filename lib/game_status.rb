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
  [6,4,2]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
  if (board[win_combo[0]]) == "X" && (board[win_combo[1]]) == "X" && (board[win_combo[2]]) == "X"
    return win_combo
  elsif (board[win_combo[0]])  == "O" && (board[win_combo[1]])  == "O" && (board[win_combo[2]]) == "O"
    return win_combo
  end
end
 false
end

def full?(board)
  board.none? do |inprogress|
    inprogress == " " || inprogress.nil?
  end
end

def draw?(board)
  won?(board) == false && full?(board) == true
end

def over?(board)
  draw?(board) == true || won?(board) == true || full?(board) == true
end


def winner(board)
  WIN_COMBINATIONS.each do |win_combo|
    if (board[win_combo[0]]) == "X" && (board[win_combo[1]]) == "X" && (board[win_combo[2]]) == "X"
      return "X"
    elsif (board[win_combo[0]])  == "O" && (board[win_combo[1]])  == "O" && (board[win_combo[2]]) == "O"
      return "O"
    end
  end
  nil
end
