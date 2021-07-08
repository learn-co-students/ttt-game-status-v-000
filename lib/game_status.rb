# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],#Top_row_win
  [3,4,5],#Middle_row_win
  [6,7,8],#Bottom_row_win
  [0,3,6],#Left_column_win
  [1,4,7],#Middle_column_win
  [2,5,8],#Right_column_win
  [0,4,8],#Top_left_to_bottom_right_win
  [2,4,6],#Top_right_to_bottom_left_win 
]

def won?(board)
  WIN_COMBINATIONS.find do |win_combo|
    board[win_combo[0]] == board[win_combo[1]] && board[win_combo[0]] == board[win_combo[2]] && position_taken?(board, win_combo[1])
  end
end

def full?(board)
 if board.include?(' ')
   return false
 else
   return true
 end
end

 def draw?(board)
   if !won?(board) && full?(board)
     return true
   end
 end

 def over?(board)
   draw?(board) == true || won?(board) != nil
 end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end
