# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],    #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,4,8], #negative diagonal
  [2,4,6], #positive diagonal
  [0,3,6],   #left column
  [1,4,7], #middle column
  [2,5,8]   #right column
]

def won?(board)
  WIN_COMBINATIONS.select do |combination|
    win_index_1 = combination[0]
    win_index_2 = combination[1]
    win_index_3 = combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

      if (position_1 == "X" && position_2 == "X" && position_3 == "X") ||
         (position_1 == "O" && position_2 == "O" && position_3 == "O")
         return combination
    end
  end
  return false
end

def full?(board)
  board.none?{|i| (i != "X" && i != "O")}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  win_combination = won?(board)
  if won?(board)
    return board[win_combination[0]]
  else
    return nil
  end
  #board.detect {|token| won?(board)}
end
