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

def won? (board)
  win_output = false

  WIN_COMBINATIONS.each do |winning_way|
    if winning_way.all? { |win_index| board[win_index] == "X" }
      win_output = winning_way
      break
    end
  end

  WIN_COMBINATIONS.each do |winning_way|
    if winning_way.all? { |win_index| board[win_index] == "O"}
      win_output = winning_way
      break
    end
  end

  win_output
end

def full? (board)
  board.all? { |e| e == "X" || e == "O" }
end

def draw? (board)
  if won?(board) == false && full?(board) == true
    true
  else
    false
  end
end

def over?(board)
  won?(board).is_a?(Array) || draw?(board)
end

def winner(board)
  winning_char = nil
  if won?(board).is_a?(Array)
    winning_char = board[won?(board)[0]]
  end

  winning_char
end
