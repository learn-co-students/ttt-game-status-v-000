# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], # Top row = 3
  [3,4,5], # Middle row = 12
  [6,7,8], # Bottom row = 21
  [0,4,8], # First diagonal = 12
  [2,4,6], # Second diagonal = 12
  [0,3,6], # Left column = 9
  [1,4,7], # Middle column = 12
  [2,5,8] # Right column = 15
]

def won?(board)
  if (board.all?{|i| i == " "})
    return false
  elsif
    WIN_COMBINATIONS.each do |win_combination|
      if (board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X")
        return win_combination
      elsif (board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O")
        return win_combination
      end
    end
  end
end

def full?(board)
  board.none?{|i| i == " "}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  (won?(board) || full?(board) || draw?(board))
end

def winner(board)
  win_combo = won?(board)
  if win_combo == nil
    winner = nil
  elsif (board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X")
    winner = "X"
  elsif (board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O")
    winner = "O"
  end
end
