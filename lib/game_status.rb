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
      if  board[win_combination[0]] == board[win_combination[1]] &&
        board[win_combination[1]] == board[win_combination[2]] &&
        position_taken?(board, win_combination[0])

        return win_combination
      else
        false
      end
    end
end

def full?(board)
  all_full = true
  board.each do |position|
    if position == "X" || position == "O"
       all_full = true
     else
       all_full = false
    end
  end
  all_full
  end

  def draw?(board)
    if full?(board) == true && !won?(board)
      true
    elsif won?(board) == true
      false
    else
      false
    end
  end

  def over?(board)
    won?(board) || draw?(board) || full?(board)
  end

def winner(board)
  win_combo = won?(board)
  if won?(board)
  return board[win_combo[0]]
  end
end
