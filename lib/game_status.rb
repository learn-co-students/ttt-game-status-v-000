# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left
  [1,4,7], # Middle 
  [2,5,8], # Right
  [0,4,8], # Diagonal
  [2,4,6]  # Diagonal2
]

def won?(board)
  WIN_COMBINATIONS.detect do | win_combination |
    board_location1 = win_combination[0]
    board_location2 = win_combination[1]
    board_location3 = win_combination[2]
    board[board_location1]==board[board_location2]&& board[board_location2]==board[board_location3] && board[board_location3] !=" "
  end
end

def full?(board)
  board.none? { | position | position ==" "}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board) 
  won?(board) || draw?(board)
end

def winner(board)
  win_combination = won?(board)
  if win_combination !=nil
    winning_location = win_combination[0]
    return board[winning_location] 
  else 
    return nil
  end
end
