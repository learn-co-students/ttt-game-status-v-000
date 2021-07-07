require "pry"# Helper Method
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
  [6,4,2]
]



def won?(board)
    WIN_COMBINATIONS.detect do |combo|
      position_1 = board[combo[0]]
      position_2 = board[combo[1]]
      position_3 = board[combo[2]]
      position_1 == "X" && position_2 == "X" && position_3 == "X" ||
      position_1 == "O" && position_2 == "O" && position_3 == "O"
      end
    end

def full?(board)
  board.all? do |index|
    index == "X" || index == "O"
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board) || won?(board) || draw?(board)


end

def winner(board)
if won?(board)
  win_index = won?(board)[0]
  board[win_index]
end


  #board.each do |combo|
  #  winner_1 = [board[combo[0]],board[combo[4]],board[combo[8]],]
  #  winner_2 = [board[combo[1]],board[combo[4]],board[combo[7]],]
  #  board ==  winner_1 = "X" || winner_2 = "O" || nil
#
#  end


end
