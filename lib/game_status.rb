# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], #horizontal
  [3,4,5], #horizontal
  [6,7,8], #horizontal
  [0,3,6], #vertical
  [1,4,7], #vertical
  [2,5,8], #vertical
  [0,4,8], #diagonal
  [2,4,6] #diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" || board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
      return combo
    end
  end
  return false
end

def full?(board)
  board.all? do |char|
    char == "X" || char == "O"? true : false
  end
end

def draw?(board)
  full?(board) && !won?(board)? true : false
end

def over?(board)
  full?(board) || won?(board) || draw?(board)? true : false
end

def winner(board)
  won?(board)? board[won?(board)[0]] : nil
end
