# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row win
  [3,4,5], #middle row win
  [6,7,8], #bottom row win
  [0,4,8], #left to right diagonal win
  [2,4,6], #right to left diagonal win
  [0,3,6], #left column win
  [1,4,7], #middle column win
  [2,5,8]  #right column win
]

board_o = ["","O","","","O","","","O",""]
board_x = ["X","","","","X","","","","X"]
board_mix = ["X","O","X","","O","","X","X","O"]
board_empty =["","","","","","","","",""]
board_full = ["X","O","O","O","X","X","X","O","O"]

#lab work
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination # return the win_combination indexes that won.
    end
  end
  false
end

def full?(board)
  full_board = board.all? do |element|
    element == "X" || element == "O"
  end
  full_board
end

def draw?(board)
  full?(board) && ! won?(board)
end

def over?(board)
  full?(board) || won?(board) || draw?(board)
end

def winner(board)

  if won?(board) == false
    nil
  else
    won_list = won?(board)
    position = won_list[0]
  return board[position]
  end
end
