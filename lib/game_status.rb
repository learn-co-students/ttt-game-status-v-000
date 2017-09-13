# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

<<<<<<< HEAD
def won?(board) #board = ["O", "O", "O", "X", " ", " ", " ", " ", " ", " "]

    WIN_COMBINATIONS.each do |win_combo| #win_combo = [3, 4, 5]
    position_1 = board[win_combo[0]]  # "X"
    position_2 = board[win_combo[1]]  # " "
    position_3 = board[win_combo[2]]  # " "

    #if all three position variables above are "O" or are "X"
      if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combo
      end
    end
    false
  end

def full?(board)
  board.all? do |token|
      token == "X" || token == "O"
  end
end

def draw?(board)
  full?(board) && !won?(board)

end

def over?(board)
  full?(board) || won?(board)

end

def winner(board)
  if winning_combo = won?(board)
     board[winning_combo.first]
  end
