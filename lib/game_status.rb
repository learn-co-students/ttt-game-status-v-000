# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], # Bottom row
  [0,4,8], # Right to left diagonal
  [2,4,6],  # Left to right diagonal
  [0,3,6],
  [1,4,7],
  [2,5,8],
]

def won?(board)
  for comb in WIN_COMBINATIONS
    win_1 = comb[0]
    win_2 = comb[1]
    win_3 = comb[2]

    if ![board[win_1], board[win_2], board[win_3]].any? { |e| e == " " }
       if board[win_1] == board[win_2] && board[win_2] == board[win_3]
         return comb
       end
    end
  end
  false
end

def full?(board)
  !board.any? { |empty_spot|  empty_spot == " "}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  # returns t for won, draw or full
  draw?(board) || full?(board) || won?(board)
end

def winner(board)
  # return the char that won
  index = won?(board)

  if index
    return board[index[0]]
  else
    return nil
  end
end
