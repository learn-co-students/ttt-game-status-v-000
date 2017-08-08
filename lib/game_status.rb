
board = ["X","X","X","O","O","O","X","X","X"]

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
  index = 0
  board.each{|player|
    position_taken?(board,index)
      if player == "X"
        WIN_COMBINATIONS.each {|array| array[index] == "X"}
        puts array
          #element.each {|array| array[index] == "X"}
        #}
      else
        WIN_COMBINATIONS.each {|array| array[index] == "O"}
          #element.each {|array| array[index] == "O"}
        #}
      end
    }
  WIN_COMBINATIONS.select {|array| array.index == "X"}
    #element.select {|array| array.index == "X"}
  #}
  WIN_COMBINATIONS.select {|array| array.index == "O"}
    #element.select {|array| array.index == "O"}
  #}
end

def full?(board)
  if board.detect {|i| i == " "}
    return false
  else
    return true
  end
end
