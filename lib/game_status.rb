# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2], # top row
  [3, 4, 5], # middle row
  [6, 7, 8], # bottom row
  [2, 4, 6], # diagnal
  [0, 4, 8], # diagnal
  [0, 3, 6], # left coloumn
  [1, 4, 7], # middle coloumn
  [2, 5, 8]  # left coloumn
  ]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination| 
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]

  if position_1 === "X" && position_2 === "X" && position_3 === "X"
    return win_combination
  elsif position_1 === "O" && position_2 === "O" && position_3 === "O"
    return win_combination
    end
  end
  return false
end

def full?(board)
  board.all?{ |position| position === "X" || position === "O"}
end

def draw?(board)
  if won?(board) === false && full?(board)
    return true 
  else
    return false
  end
end

def over?(board)
  return won?(board) || full?(board) || draw?(board)
end

def winner(board)
  if won?(board) === false 
    return nil
  end
  winning_index = won?(board)
  winning_index.each do |index| 
  if board[index] === "X"
    return "X"
  elsif board[index] === "O"
    return "O"
  end
 end
end
  

