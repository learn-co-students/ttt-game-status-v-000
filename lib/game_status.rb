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
  WIN_COMBINATIONS.detect do |winning_combination|
    position_1 = board[winning_combination[0]]
    position_2 = board[winning_combination[1]]
    position_3 = board[winning_combination[2]]
    position_1 == position_2 && position_2 == position_3 && position_taken?(board, winning_combination[0])
  end
end

def full?(board)
  board.all? do |token|
    token == "X" || token == "O"
  end
end

def draw?(board)
  won?(board) == nil && full?(board) == true

end

def over?(board)
  won?(board) != nil || draw?(board)
end

def winner(board)
  if won?(board) != nil
    board[(won?(board)[0])]
  else
    nil
  end
end
