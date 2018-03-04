# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
top_row_win = [0,1,2]
middle_row_win = [3,4,5]
bottom_row_win = [6,7,8]
left_column_win = [0,3,6]
middle_column_win = [1,4,7]
right_column_win = [2,5,8]
left_diagonal_win = [0,4,8]
right_diagonal_win = [2,4,6]

WIN_COMBINATIONS = [top_row_win,middle_row_win,bottom_row_win,left_column_win,middle_column_win,right_column_win,left_diagonal_win,right_diagonal_win]

def won?(board)
  WIN_COMBINATIONS.detect do |array|
    board[array[0]] == board[array[1]] && board[array[1]] == board[array[2]] && position_taken?(board, array[0])
  end
end

def full?(board)
  board.all?{|index| index == "X" || index == "O"}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
  if winXO = won?(board)
    board[winXO.first]
  end
end
