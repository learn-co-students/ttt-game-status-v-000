# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,4,8], [2,4,6], [0,3,6], [1,4,7], [2,5,8]
]

def won?(board)
  WIN_COMBINATIONS.detect do |place|
    board[place[0]] == board[place[1]] &&
    board[place[1]] == board[place[2]] &&
    position_taken?(board, place[0]) #review this line
 end
end

def full?(board)
  board.all? do |token| token == "X" || token == "O"
  end
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board) #review this method again
  return nil unless won?(board)
  return "X" if board[won?(board)[0]] == "X"
  return "O" if board[won?(board)[0]] == "O"
end
