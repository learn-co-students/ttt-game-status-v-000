# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def won?(board)
  won = nil
  WIN_COMBINATIONS.each do |win_combo|
    row = []
    win_combo.each do |position|
      if position_taken?(board,position)
        row << board[position]
      end
    end
    if (row.length == 3 && (!row.include?("X") || !row.include?("O")))
      won = win_combo
    end
  end
  won
end

def full?(board)
  board.all? do |position|
    position == "X" || position == "O"
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  won = won?(board)
  if won
    board[won[0]]
  else
    won
  end
end
