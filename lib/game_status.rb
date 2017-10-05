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
      full?(board) =="" || full?(board) ==" "
      false

      # full?[board].all do |token|
      # false
    end


def draw?(board)
end

def over?(board)
end

def winner(board)
end
