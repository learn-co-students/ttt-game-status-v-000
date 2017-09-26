require "pry"# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =
  [
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
      WIN_COMBINATIONS.each do |positions|
        win_index_0 = positions[0]
        win_index_1 = positions[1]
        win_index_2 = positions[2]
        if board[positions[0]] == "X"  && board[positions[1]] == "X" &&  board[positions[2]] == "X"
          return positions
        elsif board[positions[0]] == "O"  && board[positions[1]] == "O" &&  board[positions[2]] == "O"
          return positions
        end
      end
      false
end

def full?(board)
  board.all? do |positions|
  positions == "O"  || positions == "X"
  end
end

def draw?(board)
  !won?(board) && full?(board)

end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  win_combination = won?(board)
 if won?(board)
  board [win_combination[0]]
end
end
