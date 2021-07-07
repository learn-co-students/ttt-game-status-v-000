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

  WIN_COMBINATIONS.each do |win_combo|
    #win_combo => [0,1,2]
    #is there a win a positions 0,1,2
    #board #=> [x,x,x]
    if board[win_combo[0]] == 'X' && board[win_combo[1]] == 'X' && board[win_combo[2]] == 'X'
      return win_combo
    elsif board[win_combo[0]] == 'O' && board[win_combo[1]] == 'O' && board[win_combo[2]] == 'O'
      return win_combo
    end
  end
  false
end

def full?(board)
  board.all? do |position|
    position == "X" || position == "O"
  end
end

def draw?(board)
  full?(board) && !won?(board)
end
def over?(board)
  draw?(board) || won?(board)
end
def winner(board)
  if won?(board)
    board[won?(board)[0]]
  end
end
