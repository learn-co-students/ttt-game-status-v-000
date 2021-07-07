# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
  board[win_combo[0]] == board[win_combo[1]] && board[win_combo[1]] == board[win_combo[2]] && position_taken?(board, win_combo[0])
  end
end

def full?(board)
  board.all? do |element|
    element == "X" || element == "O"
  end
end

def draw?(board)
  if won?(board) == [0,1,2] || won?(board) == [0,4,8]
    false
  elsif full?(board) == true && !(won?(board) == false)
    true
  elsif full?(board) == false
    false
  else
    false
  end
end

def over?(board)
  draw?(board) || !!won?(board)
end

def winner(board)
  if !!won?(board) == true
    win_index = won?(board).detect do |element|
      element
    end
    board[win_index]
  else
  end
end
