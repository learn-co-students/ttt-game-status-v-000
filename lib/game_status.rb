# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [1,4,7],
  [0,3,6],
  [2,5,8],
]
def won?(board)
  WIN_COMBINATIONS.find do |combo|
      if board[combo[0]] == board [combo[1]] && board[combo[1]] == board [combo[2]]
      position_taken?(board, combo[0])
      end
    end
end

def full?(board)
  board.all?{|player| player == "X" || player == "O"}
  end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board) && won?(board) || draw?(board)
end

def winner(board)
  if winning_token = won?(board)
    board[winning_token.first]
end
end
