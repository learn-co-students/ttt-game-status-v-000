# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win = win_combination.all? do |index|
      board[index] == "X"
    end
    if win
      return win_combination
    end
    win = win_combination.all? do |index|
      board[index] == "O"
    end
    if win
      return win_combination
    end
  end
  return false
end

def full?(board)
  board.none?{|token| token == " "}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
 if !(won?(board))
   return nil
 end
   if board[won?(board)[0]] == "X"
     return "X"
   end
  if board[won?(board)[0]] == "O"
    return "O"
end
end
