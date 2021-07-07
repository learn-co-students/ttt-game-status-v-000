# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #first vertical column
  [1,4,7], #second vertical column
  [2,5,8], #third vertical column
  [0,4,8], #diagonal top left to bottom right
  [2,4,6] #diagonal top right to bottom left
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination| #call the WIN_COMBINATIONS nested array & for each nest add it to new var win_combination
      win_index_1 = win_combination[0] #the first combination of win goes into a new var win_index_1
      win_index_2 = win_combination[1] #repeat but now second win
      win_index_3 = win_combination[2] #repeat again for third win

      position_1 = board[win_index_1] # board at index1
      position_2 = board[win_index_2] # board at index2
      position_3 = board[win_index_3] # board at index3

      if (position_1 == "X" && position_2 == "X" && position_3 == "X")
        return win_combination     # return the win_combination indexes that won.
      elsif (position_1 == "O" && position_2 == "O" && position_3 == "O")
        return win_combination
      end
    end
    return false
  end

def full?(board)
  board.all? {|i| i == "X" || i == "O"} #iterate over the board adding it to i and check if i is either equal to X or O, or both
end

def draw?(board)
  !won?(board) && full?(board) #game has not been won and the board is full return true
end

def over?(board)
  won?(board) || draw?(board) || full?(board) #has been won OR is a draw OR is a full board return true
end

def winner(board)
  WIN_COMBINATIONS.detect do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return "X"
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return "O"
    else
      false
    end
  end
end
