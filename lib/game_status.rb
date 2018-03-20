# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [ 0, 1, 2],
  [ 3, 4, 5],
  [ 6, 7, 8],
  [ 0, 3, 6],
  [ 1, 4, 7], 
  [ 2, 5, 8],
  [ 0, 4, 8],
  [ 2, 4, 6]
]

def full? (board) 
#    [0...8].all?{ | idx | position_taken?(board,idx) }
  i = 0
  while i<= 8
    if ! position_taken?(board,i)
      break
    end
    i += 1
  end
  i > 8 ? true : false
end

def draw? (board)
   !won?(board) && full?(board)
 end
 
def won? (board)
  WIN_COMBINATIONS.find do | combo |
    position_taken?(board,combo[0]) && board[combo[0]]==board[combo[1]] && board[combo[1]]==board[combo[2]]
  end
end 

def over? (board)
  draw?(board) || won?(board) || full?(board) ? true : false
end

def winner (board)
  combo = won?(board)
  return combo==nil ? nil : board[combo[0]]
end
