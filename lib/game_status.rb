# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], [3,4,5],[6,7,8],[0,4,8], [2,4,6], [0,3,6], [1,4,7], [2,5,8]
]

def won?(board)
  combo = []
  board.all? { |e| e == " " || e == ""}

  if board[0] == board[1] && board[0] === board[2] && (board[0] == "X" || board[0] == "O")
    true
    combo = WIN_COMBINATIONS[0]
  elsif  board[3] == board[4] && board[3] === board[5] && (board[5] == "X" || board[5] == "O")
    true
    combo = WIN_COMBINATIONS[1]
  elsif board[6] == board[7] && board[6] === board[8] && (board[8] == "X" || board[8] == "O")
    true
    combo = WIN_COMBINATIONS[2]
  elsif board[0] == board[4] && board[0] === board[8] && (board[8] == "X" || board[8] == "O")
    true
    combo = WIN_COMBINATIONS[3]
  elsif board[2] == board[4] && board[2] === board[6] && (board[6] == "X" || board[6] == "O")
    true
    combo = WIN_COMBINATIONS[4]
  elsif  board[0] == board[3] && board[0] === board[6] && (board[6] == "X" || board[6] == "O")
    true
    combo =WIN_COMBINATIONS[5]
  elsif  board[1] == board[4] && board[1] === board[7] && (board[7] == "X" || board[7] == "O")
    true
    combo = WIN_COMBINATIONS[6]
  elsif  board[2] == board[5] && board[2] === board[8] && (board[8] == "X" || board[8] == "O")
    true
    combo = WIN_COMBINATIONS[7]
  else
    false
  end

end

def full?(board)
  check = board.any? { |item| item == "" || item == " "  }
  if check == true
    false
  else
    true
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    true
  end
end

def over?(board)
  if draw?(board) == true && won?(board) == false
    true
  elsif full?(board) == false && won?(board) == false
    false
  else
    true
  end
end

def winner(board)
  if won?(board) != false
    combo = 100
    combo = won?(board)
    position = Integer(combo[0])
    winna = String(board[position])

    if winna == "X"
      "X"
    elsif winna == "O"
      "O"
    end
  else
    nil
  end

end
# Define your WIN_COMBINATIONS constant
