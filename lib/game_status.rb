# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
 WIN_COMBINATIONS = [
   [0, 1, 2],
   [3, 4, 5],
   [6, 7, 8],
   [0, 3, 6],
   [1, 4, 7],
   [2, 5, 8],
   [0, 4, 8],
   [2, 4, 6]
 ]

# def won?(board)
#   WIN_COMBINATIONS.each do |win_combo|
#     win_index_1 = win_combo[0]
#     win_index_2 = win_combo[1]
#     win_index_3 = win_combo[2]
#     position_1 = board[win_index_1]
#     position_2 = board[win_index_2]
#     position_3 = board[win_index_3]
#     if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
#       return win_combo
#     end
#     return false
#   end
# end

def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    win_index_1 = win_combo[0]
    win_index_2 = win_combo[1]
    win_index_3 = win_combo[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
  end
end


def full?(board)
  board.all? do |position|
    position == "X" || position == "O"
  end
end


def draw?(board)
  if full?(board) && !won?(board)
    return true
  end
end


def over?(board)
  if draw?(board) || won?(board)
    return true
  end
end


def winner(board)
  win = won?(board)
  if win == nil
    return nil
  elsif board[win[0]] == "X" || board[win[0]] == "O"
    return board[win[0]]
  else
    return nil
  end
end
