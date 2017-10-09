# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  # win_combination is a 3 element ar
  WIN_COMBINATIONS.each do |win_combination|# grab each index from the win_combination that composes a win.
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3]
    # load the value of the board at win_index_3

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
        return win_combination
    end
  end
  false
end
# board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
def full?(board)
  board.all? {|token| token == "X" || token == "O"}

end
 #  top_row_win = [0,1,2]
def draw?(board)
  draw?(draw_board)
  true
end #  if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board
 #    [top_row_win[2]] == "X"
 #    "X won in the top row"
 #
 #  end
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]
