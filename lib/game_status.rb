# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
                    [0,1,2],
                    [3,4,5],
                    [6,7,8],
                    [0,3,6],
                    [1,4,7],
                    [2,5,8],
                    [0,4,8],
                    [2,4,6]]


def won?(board)
WIN_COMBINATIONS.each do |combos|
  if combos.all? {|possible| board[possible] == "X"} || combos.all?{|possible| board[possible] == "O"}
    return combos
    end
  end
return false
end

def full?(board)
  board.none? {|spots| spots == " "}
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  end
  return false
end

def over?(board)
  if draw?(board) == true || won?(board) != false
    return true
  else
    return false
  end
end

def winner(board)
  player = won?(board)

    if won?(board) == false
    return nil
  end

  if board[player[0]] == "X"
    return "X"
  else
    return "O"
  end



end