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
[2,4,6]
]


def won?(board)
# iterate through each winning combination ands returns false if no win or winning combination if true returns first true element
  WIN_COMBINATIONS.detect do |win_combination|
# iterate through each index in each winning combination. #select returns array of true values from code block
# block checks if each index from win combination is equal to X
    if win_combination.all? {|index| board[index] == "X"}
      return win_combination
    elsif win_combination.all? { |index| board[index] == "O"}
      return win_combination
    else
      false
    end
  end
end



def full?(board)
board.none? { |board| board == "" || board == " " || board == nil }
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  elsif !full?(board) && won?(board)
    return false
  else
    won?(board)
    return false
  end
end

def over?(board)
  if draw?(board) || won?(board) || full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if !draw?(board) & won?(board)
    arr = won?(board)
    return board[arr[0]]
  elsif !won?(board)
    return nil
  end
end
