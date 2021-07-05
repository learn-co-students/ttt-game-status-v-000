# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
      board[win_combination[0]] == board[win_combination[1]] &&
      board[win_combination[1]] == board[win_combination[2]] &&
      position_taken?(board, win_combination[0]) == true
  end
end

def full?(board)
  board.all? do |move|
    move != " "
  end
end

def draw?(board)
  draw = !won?(board) && full?(board)
  draw ? true : false
end

def over?(board)
  over = (won?(board) || full?(board) || draw?(board))
  over ? true : false
end

  def winner(board)
    winner = won?(board)
    if winner == nil
      return nil
    else
      return  board[winner[0]]
    end
  end
