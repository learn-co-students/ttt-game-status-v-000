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
  [2, 4, 6],
  ]

def won?(board)
 WIN_COMBINATIONS.select do |win_combination|
    if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X"
    return win_combination
    end
      if board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
    return win_combination
    end
  end
  return false if board.empty?
end

def full?(board)
 board.all? do |full_board|
  full_board == "X" || full_board == "O"
  end
end

def draw?(board)
  board.all? do |full_board|
  full_board == "X" || full_board == "O"
  end
   WIN_COMBINATIONS.select do |win_combination|
    if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X"
    return false
    end
      if board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
    return false
    end
  end
end

def over?(board)
  board.all? do |full_board|
  full_board == "X" || full_board == "O"
  end
end

def winner(board)
 WIN_COMBINATIONS.select do |win_combination|
    if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X"
      return "X"
    end
      if board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
        return "O"
    end
  end
    board.all? do |full_board|
  full_board == "X" || full_board == "O"
  end
  return nil
end


