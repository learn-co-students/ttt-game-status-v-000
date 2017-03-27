# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =
[
  [0,1,2], # top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8], # right column
  [0,4,8], #left to right diagonal
  [2,4,6]  # right to left diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|

       if (board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X") ||
          (board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O")
          return  win_combination
    end
  end
  return false
end

def full?(board)
  #use each or a higher level function
  board.none? do |board_check|
   board_check == " " || board_check == ""
  end
end

def draw?(board)
 !won?(board) && full?(board)

  #returns tru if no winning combo and the board is full
  #returns false if no win and not full. false if the board is won
  #compose using the methods above
end

def over?(board)
   won?(board) || full?(board)
  #returns true if the board is won,full, or draw
  #compose using the above methods
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  #return the token, x or o, that has won
  # can use return value of the above methods
  end
end
