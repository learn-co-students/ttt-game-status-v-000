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
  [1,4,7], #second column
  [2,5,8], #third column
  [0,4,8], #diagonal top left to bottom right
  [2,4,6]  #diagonal top right to bottom left
]

# def won?(board)
#   WIN_COMBINATIONS.each do |win_combo|
#
#   end
# end
# ^this is what i had before

def won?(board)
    WIN_COMBINATIONS.find do |win_combo|
      if  board[win_combo[0]] == "X" &&
          board[win_combo[1]] == "X" &&
          board[win_combo[2]] == "X" ||
          board[win_combo[0]] == "O" &&
          board[win_combo[1]] == "O" &&
          board[win_combo[2]] == "O"
          return win_combo
       end
    end
  end

def full?(board)
  board.all? do |index| index == "X" || index == "O"
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || won?(board) && full?(board) || won?(board) && !full?(board)
end

def winner(board)
  if won?(board) != nil
    winner = board[won?(board)[0]]
  end
end
