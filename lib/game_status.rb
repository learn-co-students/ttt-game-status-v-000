# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [0, 3, 6],
  [0, 4, 8],
  [1, 4, 7],
  [2, 5, 8],
  [2, 4, 6],
  [3, 4, 5],
  [6, 7, 8],
]

def won?(board)

  WIN_COMBINATIONS.each do |win|

    if win.all? {|y| board[y] == "X"}
      return win
    elsif win.all? {|y| board[y] == "O"}
      return win
    end
  end
  return false

end

def full?(board)

  board.all? do |position|
    position == "X" || position == "O"
  end

end

def draw?(board)
  !(won?(board)) && (full?(board))
end

def over?(board)
  if full?(board) == true
    return true
  else full?(board) == false
    return false
  end
end


def winner(board)
  if (draw?(board)) || !full?(board) && !won?(board)
    return nil
  elsif (board[won?(board)[0]] == "X")
    return "X"
  else (board[won?(board)[0]] == "O")
    return "O"
  end
end
