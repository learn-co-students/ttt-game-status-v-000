# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # top row
  [3, 4, 5], # middle row
  [6, 7, 8], # bottom row
  [0, 3, 6], # left row
  [1, 4, 7], # middle row
  [2, 5, 8], # right row
  [0, 4, 8], # left-diagonal
  [2, 4, 6]  # right-diagonal
]

# compare each winning combination with the board array
# if all three numbers exist inside of the board array and are held by the same character
#then return that winning combination


def won?(board)
  WIN_COMBINATIONS.each do |combo|
    one = combo[0]
    two = combo[1]
    three = combo[2]
    x = "X"
    o = "O"

    if board[one] == x && board[two] == x && board[three] == x
      return combo
    elsif board[one] == o && board[two] == o && board[three] == o
      return combo
    end
  end

  false
end

def full?(board)
  !board.include?(" ")
end

def draw?(board)
  if full?(board) && won?(board) == false
    return true
  end

  false
end

def over?(board)
  if won?(board) != false || full?(board) || draw?(board)
    return true
  end

  false
end

def winner(board)
  if won?(board)
    save_index = won?(board) # array of winning combo
    return board[save_index[0]]
  end
end
