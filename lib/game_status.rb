require 'pry'
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
  [6,4,2]
]

def won?(board)
# !won?(board) !nil(true) !false(true)
    WIN_COMBINATIONS.detect do |combo| # combo = to [3,4,5]
      position1 = board[combo[0]]
      position2 = board[combo[1]]
      position3 = board[combo[2]]
      if position1 == position2 && position2 == position3 && position3 != " "
        return combo
      end
    false
  end
end

def full?(board)
  board.any? do |position|
      if position == " "
       return false
    end
  end
   true
end

def draw?(board)
  board.any? do |position|
    if position == " " || won?(board)
      return false
    end
  end
  true
end

def over?(board)
 if !full?(board)
   return false
end
true
end

def winner(board)
  if won?(board)
     index = won?(board)[0]
     return board[index]
  end
end
