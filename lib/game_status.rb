# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [2,4,6],
  [0,4,8]
]

def won?(board)
  WIN_COMBINATIONS.detect do |win|
    if board[win[0]] == "X" &&
       board[win[1]] == "X" &&
       board[win[2]] == "X"
       board
    elsif board[win[0]] == "O" &&
       board[win[1]] == "O" &&
       board[win[2]] == "O"
       board
    end
  end
end

def full?(board)
  board.all? {|x| x == "X" || x == "O"}
end

def draw?(board)
  full?(board) && !(won?(board))
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
  win = won?(board)
  if win == nil
    nil
  else
    if board[win[0]] == "X"
      "X"
    elsif board[win[0]] == "O"
      "O"
    else
      nil
    end
  end
end
