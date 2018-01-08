# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #first column
  [1,4,7], #middle column
  [2,5,8], #bottom column
  [0,4,8], #left top to right bottom diaganol
  [2,4,6] #right top to left bottom diaganol
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    #win_index_1 = win_combo[0]
    #win_index_2 = win_combo[1]
    #win_index_3 = win_combo[2]

    position_1 = board[win_combo[0]]
    position_2 = board[win_combo[1]]
    position_3 = board[win_combo[2]]

      position_1 == "X" && position_2 == "X" && position_3 == "X" ||
      position_1 == "O" && position_2 == "O" && position_3 == "O"
    end
end

def full?(board)
  board.all? do |position|
    position == "X" || position == "O"
  end
end

def draw? (board)
 !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  won?(board) && board[won?(board)[0]]
end
