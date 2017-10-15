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

board = ["X", "X", "X", "X", " ", " ", " ", "X", "X"]
def won?(board)
  winning_array = []
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      winning_array = win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      winning_array = win_combination
    else
    end
  end
  if winning_array.empty?
    false
  else
    winning_array
  end
end

def full?(board)
    board.none? {|place| place == " "}
end

def draw?(board)
  if full?(board)
    if won?(board) != false
      false
    else
      true
    end
  else
    false
  end
end

def over?(board)
  if won?(board) != false
    true
  elsif draw?(board)
    true
  else
    false
  end
end

def winner(board)
  if won?(board) != false
    return board[won?(board)[0]]
  else
    return nil
  end
end
