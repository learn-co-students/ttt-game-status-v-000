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
  WIN_COMBINATIONS.detect do |win|
    position_taken?(board, win[0])
      if board[win[0]] == "X" && board[win[1]] == "X" && board[win[2]] == "X"
        return win
      elsif
       board[win[0]] == "O" && board[win[1]] == "O"  && board[win[2]] == "O"
       return win
      else
        false
      end
    end
end

def full?(board)
  if board.include?(" ")
    false
  else
    true
  end
end

def draw?(board)
  if !won?(board) && full?(board)
     true
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  end
end

def winner(board)
   if !won?(board)
    nil
   elsif board[won?(board)[0]] == "X"
    "X"
   else
    "O"
  end
end
