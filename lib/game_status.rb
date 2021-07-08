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
  [2,4,6],
  [0,4,8]
]

def won?(board)
  WIN_COMBINATIONS.detect do |triad|
    (board[triad[0]] == "X" || board[triad[0]] == "O") && 
        board[triad[0]] == board[triad[1]] && board[triad[1]] == board[triad[2]]
  end
end

def full?(board)
  !board.include?(" ")
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  won?(board) ? board[won?(board)[0]] : nil
end
