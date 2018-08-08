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
  [2, 4, 6],
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if combo.all? {|index| board[index] == "X"}
      return combo
    elsif combo.all? {|index| board[index] == "O"}
      return combo
    end
  end
  return false
end

def full?(board)
  board.all? {|position| position_taken?(board, board.index(position))}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if won?(board)
    winning_index = won?(board)[0]
    return board[winning_index]
  end
end
