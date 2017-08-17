# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
def won?(board)
  WIN_COMBINATIONS.detect do |position|
    if board[position[0]] == "X" && board[position[1]] == "X" && board[position[2]] == "X"
      position
    elsif board[position[0]] == "O" && board[position[1]] == "O" && board[position[2]] == "O"
      position
    else
      false
    end
  end
end

def full?(board)
  board.all? do |full_board|
    if full_board == "X" || full_board == "O"
      true
    else
      false
    end
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  elsif !won?(board) && !full?(board)
    false
  else won?(board)
    false
  end
end

def over?(board)
  if draw?(board) || won?(board) || full?(board)
    true
  else
    false
  end
end

def winner(board)
  if win_combination = won?(board)
    board[win_combination.first]
  else
    nil
  end
end
