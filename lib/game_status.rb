board = ["X","O","X","O","X"," "," "," "," "]
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

def won?(board)
  board.each {|index|
    position_taken?(board,index)
      if index == "X"
        WIN_COMBINATIONS.each {|array| array[index] == "X"}
      else
        WIN_COMBINATIONS.each {|array| array[index] == "O"}
      end
      puts array
  }
end
board = ["X","O","X","O","X"," "," "," "," "]
board.each {|index| index if board[index] == "X" puts true else puts false end }
