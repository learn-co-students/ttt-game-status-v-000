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
    if win_combination.all? { |n| board[n] == "X" }
      return win_combination
    elsif win_combination.all? { |n| board[n] == "O" }
      return win_combination
    end
  end
  
  if board.none? { |n| n == "X" or "O" }
    return false
  end
end


def full?(board)
  
  if  board.all? { |n| n == "X" or n == "O" } 
    return true
  end

end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  end
end

def over?(board)
  if draw?(board)
    return true
  end
  
  if won?(board) 
    return true
  end
end

def winner(board)
  WIN_COMBINATIONS.each do |win_combination|
    if win_combination.all? { |n| board[n] == "X" }
      return "X"
    elsif win_combination.all? { |n| board[n] == "O" }
      return "O"
    end
    
    if !won?(board)
      return nil
    end
  end
end
