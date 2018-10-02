# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2],
[3,4,5],
[6,7,8],
[0,3,6],
[1,4,7],
[2,5,8],
[0,4,8],
[6,4,2]]
# Define your WIN_COMBINATIONS constant
=begin
def won?(board)
  curr = 0
  col = 0
  while curr <= 8
    if board[curr] != " " && (board[curr] == board[curr + 1] && board[curr] == board[curr + 2])
      return [curr, curr + 1, curr + 2]
    elsif board[col] != " " && (board[col] == board[col + 3] && board[col] == board[col + 6])
      return [col, col + 3, col + 6]
    else
      col += 1
      curr += 3
    end
  end
  if board[4] != " " && board[0] == board[4] && board[8] == board[4]
    return [0, 4, 8]
  elsif board[4] != " " && (board[2] == board[4] && board[6] == board[4])
    return [2, 4, 6]
  end
  false
end
=end

def won?(board)
  count = 0
  while count < WIN_COMBINATIONS.length
    win_combination = WIN_COMBINATIONS[count]
    # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
    # grab each index from the win_combination that composes a win.
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination # return the win_combination indexes that won.
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    else
      count += 1
    end
  end
  false
end


def full?(board)
  if board.include?(" ") == false && won?(board) == false
    return true
  end
  false
end


def draw?(board)
  if full?(board) == true
    return true
  end
  false
end


def over?(board)
  if won?(board).is_a?(Array)
    return true
  end
  if full?(board)
    return true
  end
  false
end


def winner(board)
  if won?(board).is_a?(Array)
    arr = won?(board)
    player = arr[0]
    return board[player]
  end
  nil
end
