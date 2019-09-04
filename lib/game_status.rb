# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
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
WIN_COMBINATIONS.detect do |win_combinations|
  index_1 = win_combinations[0]
  index_2 = win_combinations[1]
  index_3 = win_combinations[2]
  
  position_1 = board[index_1]
  position_2 = board[index_2]
  position_3 = board[index_3]
  
  position_1 == position_2 && position_2 == position_3 && position_taken?(board, index_1)
  
end
end

def full?(board) 
 board.all?{|space| space =="X"|| space =="O"}
end 
 
def draw?(board)
  full?(board)
  !won?(board)
end

def over?(board)
  won?(board) || full?(board) 
end

def winner(board)
  if winc = won?(board)
    board[winc.first]
  end
end

