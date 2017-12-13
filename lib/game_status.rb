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
  [6,4,2]
]


def won?(board)
  WIN_COMBINATIONS.each do |index|
    if (board[index[0]] == "X" && board[index[1]] == "X" && board[index[2]] == "X") ||
      (board[index[0]] == "O" && board[index[1]] == "O" && board[index[2]] == "O")
      return index
    end
  end
  return
  false
end


def full?(board)
  board.none? {|i| i == " "}
end


def draw?(board)
  if full?(board) && !won?(board)
    true
  end
end


def over?(board)
  won?(board) || full?(board) || draw?(board)
end


def winner(board)
  if winner = won?(board)
    board[winner[0]]
  end
end
