# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left
  [1,4,7], # Middle
  [2,5,8], # right
  [0,4,8], # Diag\
  [2,4,6] # Diag/
]

def won?(board)
  # WIN_COMBINATIONS.detect {|set|
  #   win_index_1 = set[0]
  #   win_index_2 = set[1]
  #   win_index_3 = set[2]
  #
  #   position_1 = board[win_index_1]
  #   position_2 = board[win_index_2]
  #   position_3 = board[win_index_3]
  #
  #   if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
  #     return set
  #   else
  #     false
  #   end
  # }
  WIN_COMBINATIONS.detect { |set| board[set[0]] == board[set[1]]&& board[set[0]] == board[set[2]] && position_taken?(board, set[0]) }
#   WIN_COMBINATIONS.each{|set|
#     win_index_1 = set[0]
#     win_index_2 = set[1]
#     win_index_3 = set[2]
#
#     position_1 = board[win_index_1]
#     position_2 = board[win_index_2]
#     position_3 = board[win_index_3]
#
#
#     if position_1 == position_2 && position_1 == position_3 && position_taken?(board, win_index_1)
#       return set
#     end
# }
#   return false
end

def full?(board)
  board.none?{|slot| slot == " "}
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
  end
end

def winner(board)
  if won?(board) && board[won?(board)[0]] == "X"
    return "X"
  elsif won?(board) && board[won?(board)[0]] == "O"
    return "O"
  end
end
