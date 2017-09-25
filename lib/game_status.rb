

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # Left column
  [1,4,7],  # Middle column
  [2,5,8],  # Right column
  [0,4,8],  # Diagonal
  [2,4,6]   # Diagonal
]

# Define won? method
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_0 = win_combination[0]
    win_index_1 = win_combination[1]
    win_index_2 = win_combination[2]
    
    if (board[win_index_0] == "X" && board[win_index_1] == "X" && board[win_index_2] == "X") ||
       (board[win_index_0] == "O" && board[win_index_1] == "O" && board[win_index_2] == "O")
      return [win_index_0,win_index_1,win_index_2]
    else
        return false
    end
  end
end
