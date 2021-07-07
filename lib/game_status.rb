# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

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
  WIN_COMBINATIONS.each do |three|
    if (board[three[0]] == "X" && board[three[1]] == "X" && board[three[2]] == "X") ||
    (board[three[0]] == "O" && board[three[1]] == "O" && board[three[2]] == "O")
      return three
    end
  end
  return false
end

def full?(board)
  board.all? do |cell|
    cell == "X" || cell == "O"
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board) || won?(board)
end

def winner(board)
  if won?(board)
    xxx = board.select {|cell| cell == "X"}
    ooo = board.select {|cell| cell == "O"}
    if xxx.size > ooo.size
      return "X"
    else
      return "O"
    end
  end
end
