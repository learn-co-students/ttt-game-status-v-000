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
  [6,4,2],
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    a, b, c = combo
    return [a, b, c] if board[a] == board[b] && board[b] == board[c] && ['X', 'O'].include?(board[a])
  end
  false
end

def full?(board)
  board.all? do |value|
    ['X', 'O'].include?(value)
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  a, b, c = won?(board)
  a ? board[a] : nil
end
