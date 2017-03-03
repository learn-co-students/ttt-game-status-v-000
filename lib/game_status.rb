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
  WIN_COMBINATIONS.each do |win_array|
    board_row = board[win_array[0]] + board[win_array[1]] + board[win_array[2]]
    if board_row == "XXX" || board_row == "OOO"
      return win_array
    end
  end
else return false
end

def full?(board)
  board.all? do |spot|
    spot == "X" || spot == "O"
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  end
end

def over?(board)
  if full?(board) == true || draw?(board) == true || won?(board) != false
    return true
  end
end

def winner(board)
  letter = won?(board)
  if letter
    return board[letter[0]]
  end
end
