# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]

def won?(board)
  WIN_COMBINATIONS.each do |win|
    win_index_1 = board[win[0]]
    win_index_2 = board[win[1]]
    win_index_3 = board[win[2]]

    if win_index_1 == "X" && win_index_2 == "X" && win_index_3 == "X"
      return win
    elsif win_index_1 == "O" && win_index_2 == "O" && win_index_3 == "O"
      return win
    end
  end
  false
end


def full?(board)
    full_board = board.all? do |position|
      position == "X" || position == "O"
    end
  end


def draw?(board)
  if full?(board) && !won?(board)
    true
  else
    false
  end
end


def over?(board)
  if draw?(board)
    true
  elsif full?(board)
    true
  elsif won?(board)
    true
  end
end


def winner(board)
    if won?(board) != false
      winner = won?(board)
      board[winner[0]]
  end
end
