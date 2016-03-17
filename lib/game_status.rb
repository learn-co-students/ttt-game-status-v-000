# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0, 1, 2], #top row
[3, 4, 5], #middle row
[6, 7, 8], #bottom row
[0, 3, 6], #left column
[1, 4, 7], #middle column
[2, 5, 8], #right column
[0, 4, 8], #diagonal top left to bottom right
[2, 4, 6] #diagonal top right to bottom left
]

def won?(board)
    WIN_COMBINATIONS.detect do|win_combination|
      position_taken?(board, win_combination[0]) && board[win_combination[1]] == board[win_combination[0]] && board[win_combination[1]] == board[win_combination[2]]
    end
end

def full?(board)
  board.all? do |number|
  number == "X" || number == "O"
  end
end


def draw?(board)
  if full?(board) && !won?(board)
    return true
    else
    return false
  end
end

def over?(board)
  if draw?(board)
    return true
    else won?(board)
  end
end

def winner(board)
   WIN_COMBINATIONS.detect do|win_combination|
  position_taken?(board, win_combination[0])
    if board[win_combination[0]] == "X" && board[win_combination[0]] == board[win_combination[1]] && board[win_combination[1]] == board[win_combination[2]]
      return "X"
    elsif board[win_combination[0]] == "O" && board[win_combination[0]] == board[win_combination[1]] && board[win_combination[1]] == board[win_combination[2]]
      return "O"
    end
   end
end