# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],   # Bottom row
  [0,3,6],    # Left column
  [1,4,7],     # Middle column
  [2,5,8],      # Right column
  [0,4,8],       # Left diagonal
  [2,4,6]         # Right diagonal
]


def won?(board)                               #for each win_combination in WIN_COMBINATIONS
  WIN_COMBINATIONS.each do |win_combination|    #win_combination is a 3 element array of indexes that compose a win

    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    end
  end
  false
end #find/detect


def full?(board)
board.all? { |value| value == "X" || value == "O" }
end

def draw? (board)
  if full?(board) && !won?(board)
    return true
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  end
end

def winner(board)
  WIN_COMBINATIONS.each do |win_combination|    #win_combination is a 3 element array of indexes that compose a win

    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return "X"
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return "O"
    end
  end
  nil
end
