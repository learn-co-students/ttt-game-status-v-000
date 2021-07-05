# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]
  ]


def won?(board)
  WIN_COMBINATIONS.find do |win_array|
    board[win_array[0]] == board[win_array[1]] && board[win_array[0]] == board[win_array[2]] && position_taken?(board, win_array[0])
  end

end
def full?(board)
  board.none? do |full_array|
    full_array == " " || full_array == nil
   
  end
end

def draw?(board)
  full?(board) && !won?(board)  || !won?(board)


end
def over?(board)
 full?(board) && !won?(board) || won?(board)
 
end

def winner(board)
   if won?(board) != nil
     winner = board[won?(board)[0]]
    
  end
end