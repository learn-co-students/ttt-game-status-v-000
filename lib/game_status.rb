# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
def WIN_COMBINATIONS(board)
  board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
  top_row_win = [[0,1,2],
  [3,4,5],[6,7,9]]
  if board[top_row_win[0]] == "X" &&
    board[top_row_win[1]] == "X" &&
    board[top_row_win[2]] == "X"
    "X won in the top row"
  end