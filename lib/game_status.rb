def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [2, 4, 6],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8]
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_index|
      position_1 = board[win_index[0]]
      position_2 = board[win_index[1]]
      position_3 = board[win_index[2]]

      position_1 == "X" && position_2 == "X" && position_3 == "X" ||
      position_1 == "O" && position_2 == "O" && position_3 == "O"
  end
end

def full?(board)
  board.all?{|position| position != " "}
end

def draw?(board)
  if won?(board) != nil ||
    full?(board) == false
    return false
  else
    board.all? do |position|
      position != "X" || "O"
    end
  end
end

def over?(board)
  if won?(board) != nil ||
    draw?(board) == true ||
    full?(board) == true
    return true
  end
end

def winner(board)
  if over?(board) == false || draw?(board) == true
    nil
  elsif over?(board) == true
    win_combo = won?(board)
    character = board[win_combo[0]]
    return character
  end
end
