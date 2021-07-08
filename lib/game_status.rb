# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def won?(board)
  winning_combo = false
  WIN_COMBINATIONS.each do |combo|
    if position_taken?(board, combo[0]) && position_taken?(board, combo[1]) && position_taken?(board, combo[2])
      if board[combo[0]] == board[combo[1]] && board[combo[0]] == board[combo[2]]
        winning_combo = combo
      end
    end
  end
  winning_combo
end

def full?(board)
    board_full = true
    board.each do |value|
      if value == " "
        board_full = false
      end
    end
  board_full
end

def draw?(board)
  game_draw = false
    if won?(board) == false && full?(board) == true
      game_draw = true
    end
  game_draw
end

def over?(board)
  game_over = false
    if won?(board) == true || full?(board) == true || draw?(board) == true
      game_over = true
    end
  game_over
end

def winner(board)
  winner = "X"
  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
      winner = board[combo[0]]
    end
      if won?(board) == false
        winner = nil
      end
    end
  winner
end
