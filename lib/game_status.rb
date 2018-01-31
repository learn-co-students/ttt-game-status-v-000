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

if board == [" "," "," "," "," "," "," "," "," "] ||
  board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
  return false
end
  for win_combination in WIN_COMBINATIONS
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    end
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    end
  end
end

def full?(board)
  if board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
    return true
  end
  board.each do |slot|
    if slot == " "
      return false
    end
  end
  end

  def draw?(board)
    board.each do |index|
      if index != " " && won?(board) != false
        return false
      else
        return true
      end
    end
  end

  def over?(board)
    if full?(board) == false
      return false
    end
    if draw?(board) == true || won?(board).kind_of?(Array) == true
      return true
    end

  end

  def winner(board)
    x = 0
    o = 0
    board.each do |token|
      if token == "X"
        x += 1
      end
      if token == "O"
        o += 1
      end
    end

    if x > o
      return "X"
    end
    if o > x
      return "O"
    end


  end
