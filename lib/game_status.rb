# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  # Horizontal rows
  [0, 1, 2], # Top
  [3, 4, 5], # Middle
  [6, 7, 8], # Bottom

  # Vertical rows
  [0, 3, 6], # Left
  [1, 4, 7], # Middle
  [2, 5, 8], # Right

  # Diagonal
  [0, 4, 8], # Left to right
  [2, 4, 6] # Right to left
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if position_taken?(board, combo[0]) && position_taken?(board, combo[1]) && position_taken?(board, combo[2])
      hold = []
      combo.each { |pos| hold.push(board[pos]) }
      hold.uniq!

      if hold.count == 1
        return combo
      end
    end
  end
  return false
end

def full?(board)
  board.include?(" ") ? false : true
end

def draw?(board)
  !won?(board) && full?(board) ? true : false
end

def over?(board)
  won?(board) || full?(board) || draw?(board) ? true : false
end

def winner(board)
  win = won?(board)
  win ? board[win[0]] : nil
end
