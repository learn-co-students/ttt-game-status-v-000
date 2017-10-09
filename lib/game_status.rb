def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


WIN_COMBINATIONS = [
  [0,1,2], #top row win
  [3,4,5], #middle row win
  [6,7,8], #bottom row win
  [0,3,6], #left row win
  [1,4,7], #middle row win
  [2,5,8], #right row win
  [0,4,8], #left diagonal
  [2,4,6] #right diagonal
]


def won?(board)
  WIN_COMBINATIONS.detect do |win|
    board[win[0]] == board[win[1]] && board[win[1]] == board[win[2]] && position_taken?(board,win[0])
end
end


def full?(board)
  board.all? do |index|
    if index != " "
        true

    elsif
      index  == " "
        false
    end
  end
end



def draw?(board)
  if won?(board) == false && full?(board) == true
    return true

  else
    false
  end
end
