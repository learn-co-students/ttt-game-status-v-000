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
  [2, 4, 6],
]


def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    index_1 = board[win_combo[0]]
    index_2 = board[win_combo[1]]
    index_3 = board[win_combo[2]]

    if index_1 == "X" && index_2 == "X" && index_3 =="X"
      return win_combo
    elsif index_1 == "O" && index_2 == "O" && index_3 =="O"
      return win_combo
    end
  end
  false
end

def full?(board)
  board.all? do |index|
  index == "X" || index == "O"
 end
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  end
end

def over?(board)
  if won?(board) || full?(board)
    true
  end
end

def winner(board)
  win_combo = won?(board)
  if win_combo == false
    return nil
  elsif board[win_combo[0]] == "X"
    return "X"
  else board[win_combo[0]] == "O"
    return "O"
  end
end
