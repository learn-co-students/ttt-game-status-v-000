# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
top_row_win = [0, 1, 2],
middle_row_win = [3, 4, 5],
bottoom_row_win = [6, 7, 8],
first_vertical_win = [0, 3, 6],
second_vertical_win = [1, 4, 7],
third_vertical_win = [2, 5, 8],
top_right_win = [0, 4, 8],
top_left_win = [2, 4, 6 ]
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|

  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

 board[win_index_1] == board[win_index_2] && board[win_index_2] == board[win_index_3] &&  board[win_index_1] != " "
 end
 end



def full?(board)
  board.none? { |position| position == " "  }
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  win_combination = won?(board)
  if win_combination
  winning = win_combination[0]
  board[winning]

end
end
