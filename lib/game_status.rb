# Helper method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
  WIN_COMBINATIONS = [
    [0,1,2], # top row win
    [3,4,5], # middle row win
    [6,7,8], # bottom row win
    [0,3,6], # left column win
    [1,4,7], # middle column win
    [2,5,8], # right column win
    [0,4,8], # left-top-to-right-bottom diagonal win
    [2,4,6]  # left-bottom-to-right-top diagonal win  
  ]
  
def won?(board)
WIN_COMBINATIONS.detect do |combo|

  board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(board, combo[0])
  
  end
end

def full?(board)
  board.none? {|index| index == " "}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
  if !won?(board)
    return nil
  else 
    return board[won?(board)[0]]
  end
end


