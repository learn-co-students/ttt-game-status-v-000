# Helper Method
#board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #middle row
  [6, 7, 8], #bottom row
  [0, 4, 8], #left diagonal
  [2, 4, 6], #right diagonal
  [0, 3, 6], #left vertical
  [1, 4, 7], #middle vertical
  [2, 5, 8]  #right vertical
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combinations|
    win_index_1 = win_combinations[0]
    win_index_2 = win_combinations[1]
    win_index_3 = win_combinations[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
  if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combinations
  else
    false
  end
  end
end



def full?(board)
  board.all? do |index|
    index == "X" || index == "O"
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  else
    false
  end
end

def over?(board)
  if won?(board) || draw?(board)
    true
  else
    false
  end
end


def winner(board)

  win_index = won?(board)

  if won?(board) 
    return board[win_index[0]]
  end
end
