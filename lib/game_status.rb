# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2], #Top row
  [3, 4, 5], #Middle row
  [6, 7, 8], #Bottom row
  [0, 3, 6], #Left verticle row
  [1, 4, 7], #Middle verticle row
  [2, 5, 8], #Right verticle row
  [0, 4, 8], #L to R diagonal row
  [2, 4, 6]  #R to L diagonal row
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    position_taken?(board, win_combination[0]) && board[win_combination[0]] == board[win_combination[1]] && board[win_combination[2]] == board[win_combination[0]]
  end
end

def full?(board)
  board.all? {|full_board| full_board == "X" || full_board == "O"}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if won?(board)
    board[won?(board).first]
  end
end
