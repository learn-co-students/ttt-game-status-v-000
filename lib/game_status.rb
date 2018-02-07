# Helper Method

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

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  if board != [" ", " ", " ", " ", " ", " ", " ", " ", " "]
   WIN_COMBINATIONS.detect do |combo|
     if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X"
       return combo
     elsif board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
       return combo
     else
       false
     end
   end
end
end

def full?(board)
  board.none? {|position| position == " "}
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
  else
    return false
  end
end

def winner(board)
  if combo = won?(board)
    return board[combo.first]
  else
    return nil
  end
end
