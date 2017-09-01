# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2], #top row
[3,4,5], #middle row
[6,7,8], #bottom row
[0,3,6], #left row
[1,4,7], #middle vertical
[2,5,8], #right row
[0,4,8], #horizontal left
[2,4,6], #horizontal right
]


def won?(board)
WIN_COMBINATIONS.detect do |y| 
  (board[y[0]] == board[y[1]]) && (board[y[1]] == board[y[2]]) && (position_taken?(board,y[0]) == true) && (position_taken?(board,y[1]) == true) && (position_taken?(board,y[2]) == true)  
  end
end
 
def full?(board)
  !board.include?(" ")
  end 

def draw?(board)
  if won?(board)
    false
  elsif !won?(board) && full?(board)
    true
  end 
end 

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  end
end


def winner(board)
   winning_array = won?(board)
    if won?(board)
      return board[winning_array[0]]
    end
end









