# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [

  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [2, 4, 6],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8]
]# Define your WIN_COMBINATIONS constant

def won?(board)
WIN_COMBINATIONS.each do |value|
  num1 = board[value[0]]
  num2 = board[value[1]]
  num3 = board [value[2]]
if num1 == "X" && num2 == "X" && num3 == "X" || num1 == "O" && num2 == "O" && num3 == "O"
return value
end
end
return false
end

def full?(board)
  board.all? do |taken|
  taken == "X" || taken == "O"
    end
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  end
end

def over?(board)
  if draw?(board) || won?(board)
    true
  end
end

def winner(board)
  won = won?(board)
  if won
    board[won[0]]
  else nil
end
end
