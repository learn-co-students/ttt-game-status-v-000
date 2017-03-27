# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row win
  [3,4,5], #middle row win
  [6,7,8], #bottom row win
  [0,3,6], #left column win
  [1,4,7], #middle column win
  [2,5,8], #right column win
  [0,4,8], #diagonal win left top to right bottom
  [2,4,6], #diagonal win right top to left bottom
]

def won?(board)
  WIN_COMBINATIONS.find do |combination|
    win_index_1 = combination[0]
    win_index_2 = combination[1]
    win_index_3 = combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    position_taken?(board, win_index_1) && position_1 == position_2 && position_2 == position_3
  end
end

def full?(board)
  board.none? {|i| i == " "}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  win_combo = won?(board)
   if win_combo
       board[win_combo[0]] # == 'X' || 'O'
   else
       nil
   end
end
