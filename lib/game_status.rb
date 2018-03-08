# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],
[0,4,8],[2,4,6]]

def won?(board)
  win = nil
  win_token = nil
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      win = win_combination
      win_token = "X"
      #break
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      win = win_combination
      win_token = "O"
      #break
    end
  end
  return win
end

def full?(board)
  board.none? {|space| space == " "}
end

def draw?(board)
  if full?(board)
    if won?(board)
      return false
    else
      return true
    end
  else
  end
end

def over?(board)
  if draw?(board)
    return true
  elsif won?(board)
    return true
  else
  end
end

def winner(board)
  win_token = won?(board)
  if win_token
    board[win_token[0]]
  else
  end
end
