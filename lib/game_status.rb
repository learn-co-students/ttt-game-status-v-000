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
  WIN_COMBINATIONS.each do |combo|
    return combo if combo.all? {|position| board[position] == 'X'}
    return combo if combo.all? {|position| board[position] == 'O'}
  end
  return false if board.all? {|position| position != " "}
end


def full?(board)
  board.all? {|square| square == "X" || square == "O"}
end


def draw?(board)
  !won?(board) && full?(board)
end


def over?(board)
  won?(board) || draw?(board) || full?(board)
end


def winner(board)
  return nil unless won?(board)
  return "X" if board[won?(board)[0]] == "X"
  return "O" if board[won?(board)[0]] == "O"
end
