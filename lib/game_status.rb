# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], #top row win
  [3,4,5], #middle row win
  [6,7,8], #bottom row win
  [0,3,6], #left column win
  [1,4,7], #middle column win
  [2,5,8], #right column win
  [0,4,8], #left vertical win
  [2,4,6] #right vertical win
]

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def won?(board)
    WIN_COMBINATIONS.detect do |win|
      win_index_1 = win[0] #top row win
      win_index_2 = win[1] #middle row win
      win_index_3 = win[2] #bottom row win
      win_index_4 = win[3] #left column win
      win_index_5 = win[4] #middle column win
      win_index_6 = win[5] #right column win
      win_index_7 = win[6] #left diagonal win
      win_index_8 = win[7] #right diagonal win

      position_1 = board[win[0]]
      position_2 = board[win[1]]
      position_3 = board[win[2]]

  if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
    WIN_COMBINATIONS
  else
    false
       end
end
end

def full?(board)
  board.all? do |position|
    if position==" "
    else
      position=="X" || "O"
    end
  end
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if won?(board)
    win_array = won?(board)
    board[win_array[1]]
  else
    nil
  end

end
