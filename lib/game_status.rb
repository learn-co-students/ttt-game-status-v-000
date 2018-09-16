# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #mid row
  [6, 7, 8], #bottom row
  [0, 3, 6], #first column
  [1, 4, 7], #second column
  [2, 5, 8], #third column
  [0, 4, 8], #diagonal
  [2, 4, 6] #second diagonal
]

def won?(board)
  WIN_COMBINATIONS.each {|win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination # return the win_combination indexes that won.
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    end
  }
  return false
end

def full?(board)
  if board.include?(" ") == true
    return false
  end
  return true
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  end
  return false
end

def over?(board)
  if won?(board) || draw?(board) || full?(board) 
    return true
  end
  return false
end

def winner(board)
  winner = []
  winner = won?(board)
  if winner == false
    return nil
  else
    if board[winner[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
end
