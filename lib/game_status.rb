# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_array|
if (board[win_array[0]] == "X" && board[win_array[1]] == "X" && board[win_array[2]] == "X") || (board[win_array[0]] == "O" && board[win_array[1]] == "O" && board[win_array[2]] == "O")
return win_array
end
  end
end

def full?(board)
  board.all? do |win_element|
    win_element == "X" || win_element == "O"
  end
end

def draw?(board)
!won?(board) && full?(board) || !won?(board) && !full?(board)
end

def over?(board)
full?(board) && draw?(board) || won?(board)
end

def winner(board)
if win_array = won?(board)
return board[win_array[0]]
end
end
