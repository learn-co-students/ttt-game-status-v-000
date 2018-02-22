# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

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
  new_arr = []
  WIN_COMBINATIONS.each do |array|

      win_index_1 = array[0]
      win_index_2 = array[1]
      win_index_3 = array[2]
      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]
      if position_1 == "X" && position_2 == "X" && position_3 == "X"
        new_arr.push(array[0])
        new_arr.push(array[1])
        new_arr.push(array[2])
        return new_arr
      elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
        new_arr.push(array[0])
        new_arr.push(array[1])
        new_arr.push(array[2])
        return new_arr

      end
    end
      false
  end

def full?(board)
  board.none?{|i| i == " "}
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  else
    false
  end
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
won?(board)
  WIN_COMBINATIONS.each do |array|

      win_index_1 = array[0]
      win_index_2 = array[1]
      win_index_3 = array[2]
      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]
      if position_1 == "X" && position_2 == "X" && position_3 == "X"
        return "X"
      elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
        return "O"

      end
    end
      nil
  end
