require "pry"
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS= [
  top_row_win=[0,1,2],
  middle_row_win=[3,4,5],
  bottom_row_win=[6,7,8],
  left_column_win=[0,3,6],
  middle_column_win=[1,4,7],
  right_column_win=[2,5,8],
  left_diagonal_win=[0,4,8],
  right_diagonal_win=[2,4,6],
  ]
#def won?(board)
  #if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board[top_row_win[2]] == "X"
    #{}"X won in the top row"
  #end
def won?(board)
WIN_COMBINATIONS.detect do |i|
  #binding.pry
  board[i[0]] == board[i[1]] && board[i[0]] == board[i[2]] && position_taken?(board,i[0])
   end
end

def full?(board)
  board.all? do |i|
   i == "X" || i == "O"
  end
end

def draw?(board)
   full?(board) && !won?(board)
end

def over?(board)
   full?(board) || won?(board)
end

def winner(board)
   board[won?(board)[0]] if won?(board)

end
