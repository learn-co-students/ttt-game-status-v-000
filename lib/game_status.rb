# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #top row
  [0,4,8], #diagonal
  [2,4,6], #diagonal
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8] #right column
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_combination.each do |win_index|
      if win_index[0] == win_index[1] && win_index[2]
        return win_combination
      end
    end
  end
end

def full?(board)
  board.all? { |space|
    space == "X" || space == "O"  }
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) == true || full?(board) == true
    return true
  else
    false
  end
end

def winner(board)
  if won?(board) == false
    return nil
  else
    win_array = won?(board)
  end
  if board[win_array[0]] == "X"
    return "X"
  else
    return "O"
  end 
end
