# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8],
  [0,3,6], [1,4,7], [2,5,8],
  [0,4,8], [2,4,6]
]

def won?(board)
  combinations = false
  WIN_COMBINATIONS.each do |array|
    pos1 = array[0]
    pos2 = array[1]
    pos3 = array[2]

    boardpos1 = board[pos1]
    boardpos2 = board[pos2]
    boardpos3 = board[pos3]
    if (boardpos1 == "X" && boardpos2 == "X" && boardpos3 == "X") ||
       (boardpos1 == "O" && boardpos2 == "O" && boardpos3 == "O")
      combinations =  array
    end
  end
  combinations
end

def full?(board)
  board.all? {|position| position == "X" || position == "O"}
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  else
    false
  end
end

def over?(board)
  if full?(board) || won?(board)
    true
  else
    false
  end
end

def winner(board)
  champarray = won?(board)
  if won?(board)
    board[champarray[1]]
  else
    nil
  end
end
