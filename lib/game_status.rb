# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
  ]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
   if board[combo[0]] != " " && board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]]
    return combo 
   end 
  end 
  false 
end 


def full?(board)
 board.all? do |position|
   position != " "
 end 
end 


def draw?(board)
  if full?(board)
    if won?(board) == false
      return true 
    end 
  end 
end 

def over?(board)
  if won?(board) != false || draw?(board) == true 
    true 
  end 
end 

def winner(board)
  if over?(board)
    board[won?(board)[0]]
  end 
end 