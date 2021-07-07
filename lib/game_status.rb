# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], #Top
    [0, 3, 6], [1, 4, 7], [2, 5, 8], #vertical - array 1
    [0, 4, 8], [2, 4, 6], #diagnol - array 2
]

def won?(board)
  WIN_COMBINATIONS.detect do |combinations|
    win_index_1 = combinations[0]
    win_index_2 = combinations[1]
    win_index_3 = combinations[2]

      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]

  if position_1 == "X" && position_2 == "X" && position_3 == "X"
        return combinations
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
       return combinations
       else
        false
       end
         end
      end

def full?(board)
    board.all? do |complete|
      complete != " "
      end
  end

  def draw?(board)
    if !won?(board) && full?(board)
      return true
    else
      return false
    end
  end

  def over?(board)
    if draw?(board) || won?(board)
      return true
    else
      return false
  end
end

def winner(board)
  if win_combination = won?(board)
    board[win_combination.first]
end


end
