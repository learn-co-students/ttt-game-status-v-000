# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #is [board[0] and board[1] and board[3]].all? "X" or "O"
  [3,4,5], #is [board[3] and board[4] and board[5]].all? "X" or "O"
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    [board[win_index_1], board[win_index_2], board[win_index_3]].all? { |marker| marker == "X" } ||
    [board[win_index_1], board[win_index_2], board[win_index_3]].all? { |marker| marker == "O" }
  end
end

def full?(board)
  board.none? { |marker| marker == " "}
end

def draw?(board)
  #returns true if full?(board) is true and won?(board) is false
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
  if won?(board)
    WIN_COMBINATIONS.detect do |win_combination|
      win_index_1 = win_combination[0]
      win_index_2 = win_combination[1]
      win_index_3 = win_combination[2]
      if ([board[win_index_1], board[win_index_2], board[win_index_3]].all? { |marker| marker == "X" })
        return "X"
      elsif ([board[win_index_1], board[win_index_2], board[win_index_3]].all? { |marker| marker == "O" })
        return "O"
      end
    end
  end
end
