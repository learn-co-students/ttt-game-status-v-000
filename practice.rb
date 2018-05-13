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

board = ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
#How does the program know if the game has been won?
def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    if win_combination.all? do |win_position|
      board[win_position] == "X"
    end
      true
    elsif win_combination.all? do |win_position|
      board[win_position] == "O"
    end
      true
    else
      false
    end
  end
end

def winner(board)
  won?(board).detect do |x|
    board[x].is_a?(String)
  end
end


def winner(board)
  winning_array = won?(board)
  if winning_array == false
    nil
  else
    board[winning_array[0]]
  end
end
