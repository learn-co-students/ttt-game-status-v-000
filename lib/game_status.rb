# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left Col
  [1,4,7], # Mid Col
  [2,5,8], # Right Col
  [0,4,8], # NW-SE Diag
  [2,4,6]  # NE-SW Diag
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if ((position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O"))
      return win_combination
    end
  end
  false
end

# much more pro with detect: returns the first array.
# covers x and o.
# if spot 1 and 2 are equal and 2 and 3 are equal (good chaining)
#   clutch: and they're equal and not cause they're just blanks...

# SOLUTION VERSION

# def won?(board)
#   WIN_COMBINATIONS.detect do |combo|
#     board[combo[0]] == board[combo[1]] &&
#     board[combo[1]] == board[combo[2]] &&
#     position_taken?(board, combo[0])
#   end
# end

def full?(board)
  board.all? do |square|
  !(square.nil? || square == " ")
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) != false || full?(board)
end

def winner(board)
  if (won?(board) == false)
    return nil
  else
    board[won?(board).first]
  end
end
