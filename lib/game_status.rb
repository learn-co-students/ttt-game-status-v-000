# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [2,4,6],
  [0,4,8]
]

def won?(board)

  WIN_COMBINATIONS.detect do |win_combination|
    board[win_combination[0]] == board[win_combination[1]] &&
    board[win_combination[1]] == board[win_combination[2]] &&
    position_taken?(board, win_combination[0])
  end
end


def full?(board)
  board.none? {|index| index == " "}

  # test_array = []
  # x = 0
  # while x < board.length
  #  if board[x] == "X" || board[x] == "O"
  #    test_array << board[x]
  #  end
  #  x += 1
  # end
  # if test_array.length == board.length
  #  return true
  # else
  #  false
  # end
end

def draw?(board)
  full?(board) == true && won?(board) == nil
end

def over?(board)
  full?(board) == true || won?(board) != nil
end


def winner(board)
  if won?(board) != nil
    winner = board[won?(board)[0]]
  end
  winner
end
