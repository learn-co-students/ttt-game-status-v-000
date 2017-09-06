# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [2, 4, 6],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8]
]

def won?(board)
  ### ways to check if won?(board) is falsey in a condition ###
  # you can't use won?(board) == false
  # you can use won?(board) == nil OR !won?(board)
  WIN_COMBINATIONS.find { |win_combination| board[win_combination[0]] == board[win_combination[1]] &&  board[win_combination[1]] == board[win_combination[2]] && board[win_combination[0]] != " "}
end

def full?(board)
  board.none? {|token| token == " "}
end

def draw?(board)
  board.any? {|token| full?(board) && !won?(board)}
end

def over?(board)
  board.all? {|token| draw?(board) || won?(board)}
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  else
    nil
  end
end
