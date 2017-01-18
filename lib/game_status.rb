# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    arr=""
    combo.each do |i|
      if position_taken?(board,i)
        arr= arr + board[i]
      end
    end
    if (arr== "OOO") || (arr=="XXX")
      return combo
    end
  end
  return false
end

def full?(board)
  !board.include?(" ")
end

def draw?(board)
  (!won?(board)) && full?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if won?(board)==false
    return nil
  end
  board[won?(board)[0]]
end
