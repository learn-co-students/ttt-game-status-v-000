# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8], # right column
  [0,4,8], # left diagonal
  [2,4,6]  # right diagonal
]

def won?(board)
  winning_combination = nil
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      winning_combination = win_combination
    end
  end

  if winning_combination != nil
    return winning_combination
  else
    return false
  end
end


def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end


def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  elsif (won?(board) != false) || (full?(board) == false && won?(board) == false)
    return false
  end
end


def over?(board)
  [won?(board) != false, draw?(board), full?(board)].any? {|i| i == true}
end


def winner(board)
  if won?(board) != false
    win_index_1 = won?(board)[0]
    win_index_2 = won?(board)[1]
    win_index_3 = won?(board)[2]
    if board[win_index_1] == "X" && board[win_index_2] == "X" && board[win_index_3] == "X"
      return "X"
    elsif board[win_index_1] == "O" && board[win_index_2] == "O" && board[win_index_3] == "O"
      return "O"
    end
  else
    return nil
  end
end
