board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], #bottom row
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column
  [2,4,6], #first diagonal
  [0,4,8] #second diagonal
  # ETC, an array for each win combination
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

        # (board[0] == "X" && win_combination[1] == "X" && win_combination[2] == "X") ||
        # (winning[0] == "O" && win_combination[1] == "O" && win_combination[2] == "O")
        # if (position_1 == "X" && position_2 == "X" && position_3 == "X") ||
        #   (position_1 == "O" && position_2 == "O" && position_3 == "O")
        #   return win_combination # return the win_combination indexes that won.
        # else
        #   false
        # end
        #redundant!

        #(position_1 == "X" && position_2 == "X" && position_3 == "X") ||
        #  (position_1 == "O" && position_2 == "O" && position_3 == "O")

        position_1 == position_2 && position_1 == position_3 && position_taken?(board, win_index_1)
  end
end

def full?(board)
  board.all? do |full|
    full == "X" || full == "O"
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  else
    nil
  end
end
