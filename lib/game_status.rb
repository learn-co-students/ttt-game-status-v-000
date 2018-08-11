# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #left columns
  [1,4,7], #middle columns
  [2,5,8], #right column
  [0,4,8], #diagonals
  [2,4,6] #diagonal
]
def won?(board)
  empty = board.all? {|spot| spot == " "}
  full = board.none? {|spot| spot == " "}
  if empty == true
    return false
  elsif
    WIN_COMBINATIONS.each do |win_combo|
      windex_1 = win_combo[0]
      windex_2 = win_combo[1]
      windex_3 = win_combo[2]

      pos_1 = board[windex_1]
      pos_2 = board[windex_2]
      pos_3 = board[windex_3]

      if pos_1 == pos_2 && pos_1 == pos_3 && pos_1 != " "
        return win_combo
      end
    end
  elsif full == true
    return false
  end
end

def full?(board)
  full = board.none? {|spot| spot == " "}
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if !full?(board) && !won?(board)
    return false
  else
    return true
  end
end

def winner(board)
  win_combo = won?(board)
  if won?(board)
    return board[win_combo[0]]
  else
    return nil
  end
end
