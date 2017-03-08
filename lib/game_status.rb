# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #First column
  [1,4,7], #Second column
  [2,5,8], #Third column
  [0,4,8], #Diagonal left-to-right
  [6,4,2]  #Diagonal right-to-left
]
# Define won?, full?, draw?, over?, and winner below
def won?(board)
  won = false
  WIN_COMBINATIONS.each do |combination|
    win_index_1 = combination[0]
    win_index_2 = combination[1]
    win_index_3 = combination[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      won = combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      won = combination
    end
  end
  return won
end

def full?(board)
  if (board.detect{|i| i == " "}) == nil
    return true
  else
    return false
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  if draw?(board) == true
    return true
  elsif won?(board).is_a?(Array) == true
    return true
  end
end

def winner(board)
  if won?(board).is_a?(Array) == true
    winner = won?(board)
    return board[winner[0]]
  end
end
