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
WIN_COMBINATIONS.detect do  |win_combo|
  board[win_combo[0]] == board[win_combo[1]] && board[win_combo[1]]==board[win_combo[2]] && (board[win_combo[1]]=="X" || board[win_combo[1]]=="O")
end
end 

def full?(board)
board.none? do |empty|
  empty =="" || empty ==" "
end
end 

def draw?(board)
  if full?(board)==true  && (won?(board)==false || won?(board)==nil) 
  true
  elsif full?(board)==false && won?(board)==true
  false
  elsif full?(board)==false
  false
  end
end 

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end 
end 

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  else
    nil 
  end 
end 