# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  # 0 | 1 | 2
  # 3 | 4 | 5
  # 6 | 7 | 8

  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # Left col
  [1,4,7],  # Middle col
  [2,5,8],  # Right col
  [0,4,8],  # Daignol 1
  [2,4,6]  # Diagnol 2
]


def won?(board)
  a = WIN_COMBINATIONS.find{
    |combo|
    board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X"
  }
  b = WIN_COMBINATIONS.find{
    |combo|
    board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
  }
  return a || b
end

def draw?(board)
  return !won?(board) && full?(board)
end

def full?(board)
  return !board.any?{|x| x == "" || x == " "}
end

def over?(board)
  return won?(board) || draw?(board)
end

def winner(board)
  a = won?(board)
  if a
    if board[a[0]] == "X"
      "X"
    else
      "O"
    end
  else
    nil
  end
end
