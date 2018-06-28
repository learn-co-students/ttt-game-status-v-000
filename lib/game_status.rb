def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
  WIN_COMBINATIONS.detect do |numbers|
    board[numbers[0]] == board[numbers[1]] && board[numbers[1]] == board[numbers[2]] && position_taken?(board, numbers[0])
  end
end

def full?(board)
  board.all? {|index| index == "X" || index == "O"}
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  else
    false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
   true
 end
end

def winner(board)
  if won?(board)
    array = won?(board)
    index = array[0]
    board[index]
  end
end
