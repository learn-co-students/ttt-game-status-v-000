# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  winning_array = []
  WIN_COMBINATIONS.detect do |win_combinations|
    board[win_combinations[0]] == board[win_combinations[1]] && board[win_combinations[1]] == board[win_combinations[2]] && position_taken?(board, win_combinations[0])

    # win_index_1 = win_combinations[0]
    # win_index_2 = win_combinations[1]
    # win_index_3 = win_combinations[2]
    # position_1 = board[win_index_1]
    # position_2 = board[win_index_2]
    # position_3 = board[win_index_3]
    # if (position_1 == "X" && position_2 == "X" && position_3) == "X" or (position_1 == "O" && position_2 == "O" && position_3 == "O")
      # winning_array << win_index_1
      # winning_array << win_index_2
      # winning_array << win_index_3
      # return winning_array

  end
end

def full?(board)
  board.all? {|a| a != " "}
end

def draw?(board)
  if full?(board) == true && !won?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if draw?(board) == true or won?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    winning_array = won?(board)
    winning_index = winning_array[0]
    if board[winning_index] == "X"
      return "X"
    else
      return "O"
    end
  else
    return nil
  end
end
