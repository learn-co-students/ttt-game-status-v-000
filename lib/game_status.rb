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
 WIN_COMBINATIONS.find do |win_plz|
 board[win_plz[0]] == board[win_plz[1]] && board[win_plz[0]] == board[win_plz[2]] && position_taken?(board, win_plz[1])
 end
end

def full?(board)
board.none? do |filled|
  filled == " " || filled.nil?
  end
 end

def draw?(board)
full?(board) == true && won?(board) == nil
end

def over?(board)
  full?(board) == true || won?(board) != nil
end

def winner(board)
  if won?(board) != nil
  win_time = board[won?(board)[2]]
 end
end
